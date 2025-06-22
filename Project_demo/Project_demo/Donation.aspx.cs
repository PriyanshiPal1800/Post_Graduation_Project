using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace Project_demo
{
    public partial class Profile : System.Web.UI.Page
    {
        string D_id="", D1,U_name,U_mail,mail,T_name,N_name;
        int don,name=0;

        

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "Donation.aspx";            
           if (Session["user"].ToString() == "")
            {
                Response.Redirect("Login1.aspx");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id='" + Session["user"].ToString() + "' ", con); //taking name of user by user_id   
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox4.Text = Convert.ToString(dr[1]) + " " + Convert.ToString(dr[2]);
                    U_name = TextBox4.Text;
                    U_mail = dr[3].ToString();
                }
                con.Close();
                if(Label11.Text=="")
                { Label11.Text = "Temple/Ngo";}
                
 }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true)
            {
                Label11.Text = "Temple";
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM temples", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataTextField = ds.Tables[0].Columns["temple_name"].ToString();
                DropDownList1.DataValueField = ds.Tables[0].Columns["temple_id"].ToString();
                DropDownList1.DataSource = ds;
                DropDownList1.DataBind();
                con.Close();
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked == true)
            {
                Label11.Text = "Ngo";
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM ngo", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataTextField = ds.Tables[0].Columns["ngo_name"].ToString();
                DropDownList1.DataValueField = ds.Tables[0].Columns["ngo_id"].ToString();
                DropDownList1.DataSource = ds;
                DropDownList1.DataBind();
                con.Close();
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
                CheckBox1.Text = "Your name will be displayed";
        }



        protected void Button1_Click(object sender, EventArgs e)
        {con.Open();
                SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(D_id, 2, len(D_id)-1) As int )) FROM Donation", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                   D_id = dr[0].ToString();
                    D1 = D_id;
                }
                if (D_id == "")
                {
                    D_id = "D0";
                }
                don = Convert.ToInt32(D1) + 1;
                D_id = "D" + Convert.ToString(don);
                con.Close();
            DateTime db =DateTime.Today.Date;
            string db1 = db.ToShortDateString();
            if (CheckBox1.Checked==true)
            {
                name = 1;
            }
            else
            {
                name = 0;
            }
            if (RadioButton1.Checked == true)
            {

                con.Open();
                   SqlCommand cmd1 = new SqlCommand("select * from temples where temple_id='"+ DropDownList1.SelectedValue + "'", con);
                SqlDataReader dr1;
                dr1 = cmd1.ExecuteReader();
                while(dr1.Read())
                {
                    T_name = dr1[1].ToString();
                }
                con.Close();
                con.Open();
                cmd = new SqlCommand("Insert into Donation(D_id,user_id,date, amount, temple_id,show_name) values('" + D_id + "','" + Session["user"].ToString() + "','" + db1 + "','" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "','" + name + "')", con);
                cmd.ExecuteNonQuery();



                mail = "Donation in the name of "+U_name + " has been made for "+T_name+ " .<br/>People like you are an inspiration to all. Thank you for this generous act of giving. Today, your donation is a gift that could not be appreciated more.<br/> So Keep Donating , Keep spreading smiles";
                MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(U_mail));
                mailMessage.Subject = "Donation Recieved ";
                mailMessage.IsBodyHtml = true;
                mailMessage.Body = mail;

                System.Net.NetworkCredential networkCredentials = new
                System.Net.NetworkCredential("kalpdivyadarshan@gmail.com", "KALP@1234");

                SmtpClient smtpClient = new SmtpClient();

                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = networkCredentials;
                smtpClient.EnableSsl = true;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                //////To By pass certificate
                System.Net.ServicePointManager.ServerCertificateValidationCallback = delegate (object s, System.Security.Cryptography.X509Certificates.X509Certificate certificate, System.Security.Cryptography.X509Certificates.X509Chain chain, System.Net.Security.SslPolicyErrors sslPolicyErrors)
                {
                    return true;
                };
                smtpClient.Send(mailMessage);
                con.Close();
            }
           else 
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from ngo where ngo_id='" + DropDownList1.SelectedValue + "'", con);
                SqlDataReader dr1;
                dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    N_name = dr1[1].ToString();
                }
                con.Close();
               
                con.Open();
                cmd = new SqlCommand("Insert into Donation(D_id,user_id,date, amount,ngo_id,show_name) values('" + D_id + "','" + Session["user"].ToString() + "','" + db1 + "','" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "','" + name + "')", con);
                cmd.ExecuteNonQuery();
                mail = "Donation in the name of " + U_name + " has been made for " + N_name + " . People like you are an inspiration to all. Thank you for this generous act of giving. Today, your donation is a gift that could not be appreciated more. So Keep Donating , Keep spreading smiles ";
                MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(U_mail));
                mailMessage.Subject = "Donation Recieved ";
                mailMessage.IsBodyHtml = true;
                mailMessage.Body = mail;

                System.Net.NetworkCredential networkCredentials = new
                System.Net.NetworkCredential("kalpdivyadarshan@gmail.com", "KALP@1234");

                SmtpClient smtpClient = new SmtpClient();

                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = networkCredentials;
                smtpClient.EnableSsl = true;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                //////To By pass certificate
                System.Net.ServicePointManager.ServerCertificateValidationCallback = delegate (object s, System.Security.Cryptography.X509Certificates.X509Certificate certificate, System.Security.Cryptography.X509Certificates.X509Chain chain, System.Net.Security.SslPolicyErrors sslPolicyErrors)
                {
                    return true;
                };
                smtpClient.Send(mailMessage);
                con.Close();
            }
            Response.Redirect("PaymentRedirect.aspx");
        }
    }
}