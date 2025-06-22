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
    public partial class Aarti_registration : System.Web.UI.Page
    { 
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        String  booking_id, a,U_name,U_mail,T_name,mail,link,time;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Login1.aspx");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(aarti_id, 2, len(aarti_id)-1) As int )) FROM aarti_booking", con);   //taking maximum ticket_id in epass
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    booking_id = dr[0].ToString();
                }
                if (booking_id == "")
                {
                    booking_id = "R0";
                }
                String s1 = booking_id.Substring(1);
                int id = Convert.ToInt32(s1) + 1;
                booking_id = "R" + Convert.ToString(id);
                con.Close();
                con.Open();
                cmd = new SqlCommand("SELECT * FROM aarti WHERE temple_id='" + Session["temple"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList2.DataTextField = ds.Tables[0].Columns["time"].ToString();
                DropDownList2.DataValueField = ds.Tables[0].Columns["aarti_id"].ToString();
                DropDownList2.DataSource = ds.Tables[0];    //assigning data source to dropdown list
                DropDownList2.DataBind();
                con.Close();
                con.Open();
                cmd = new SqlCommand("SELECT * FROM aarti WHERE temple_id='" + Session["temple"].ToString() + "'", con);
                dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    link = dr["url"].ToString();
                    time = dr["time"].ToString();
                }

                con.Close();

                /////////////////user info //////////////////////////////////////////////////
                con.Open();
                cmd = new SqlCommand("SELECT * FROM users WHERE user_id='" + Session["user"].ToString() + "' ", con); //taking name of user by user_id   
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    U_name = Convert.ToString(dr[1]) + " " + Convert.ToString(dr[2]);
                    U_mail = dr[3].ToString();
                }
                con.Close();
                ///////////////tenple info /////////////////////////////////////////////////////////
                con.Open();
                cmd = new SqlCommand("select * from temples where temple_id='" + Session["temple"] + "'", con);
                
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    T_name = dr[1].ToString();
                }
                con.Close();
            }
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            lblDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            lblError.Text = "";
            DateTime date = Convert.ToDateTime(Calendar1.SelectedDate);
            DateTime curr = DateTime.Now;
            if (lblDate.Text == "")
            {
                lblError.Text = "Select a date from the calendar";
            }
            else if (date < curr)
            {
                lblError.Text = "Select a valid date from the calendar";
                Button1.Enabled = false;

            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Temple1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime date = Convert.ToDateTime(Calendar1.SelectedDate);
            DateTime curr = DateTime.Now;
            if (lblDate.Text == "")
            {
                lblError.Text = "Select a date from the calendar";
            }
            else if (date < curr)
            {
                lblError.Text = "Select a valid date from the calendar";
            }
            else
            {
                String date_str = date.ToShortDateString();
                a = DropDownList2.SelectedValue;
                con.Open();
                SqlCommand cmdIns1 = new SqlCommand("INSERT INTO aarti_booking VALUES('" + booking_id + "', '" + Session["user"].ToString() + "', '" + a + "', '" + date_str + "')", con);
                cmdIns1.ExecuteNonQuery();

                mail = "Thank You " + U_name + " for Registerion for Online Aarti of " + T_name + ". <br/> <br/> LINK := " + link + " . <br/> DATE := " + Calendar1.SelectedDate.ToString("dd/MM/yyyy") + " .   <br/>PASSWORD := " + Calendar1.SelectedDate.ToString("dd/MM/yyyy")+time+ " . <br/>JOIN THE LINK FOR ONLINE AARTI DARSHAN";

                MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(U_mail));
                mailMessage.Subject = "Aarti Booking Confirmation Mail";
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
                lblMsg.Text = "Mail is sent to you on the registered Email ID";
                Response.Redirect("PaymentRedirect.aspx");
                
                con.Close();

            }
        }
    }
}