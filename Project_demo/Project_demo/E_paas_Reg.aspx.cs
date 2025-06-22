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
    public partial class E_paas_Reg : System.Web.UI.Page
    {

        String  tid,mail,s1,t1;
        int val = 1, amt;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Login1.aspx");
            }
            else if (Convert.ToString(Session["temple"]) == "")
            {
                Response.Redirect("TempleNGOCards.aspx");
            }
            else
            { 
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(ticket_id, 2, len(ticket_id)-1) As int )) FROM epass", con);   //taking maximum ticket_id in epass
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tid = dr[0].ToString();
                    s1 = tid;
                }
                if (tid == "")
                {
                    tid = "E0";
                }
                int id = Convert.ToInt32(s1) + 1;
                tid = "E" + Convert.ToString(id);
/*
                if (dr.Read())
                {
                    tid = dr[0].ToString();
                }
                if (tid == "")
                {
                    tid = "E0";
                }
                String s1 = tid.Substring(1);
                int id = Convert.ToInt32(s1) + 1;
                tid = "E" + Convert.ToString(id);*/
                con.Close();
                con.Open();
                cmd = new SqlCommand("SELECT * FROM users WHERE user_id='" + Session["user"].ToString() + "' ", con); //taking name of user by user_id   
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtName.Text = Convert.ToString(dr[1]) + " " + Convert.ToString(dr[2]);
                    TextBox1.Text = dr[3].ToString();
                }
                con.Close();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            btnCon.Enabled = true;
            int count = 0;
            lblDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            lblError.Text = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT no_of_people FROM epass WHERE date_to_come='" + lblDate.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                count += Convert.ToInt32(dr["no_of_people"]);
            }
            if (count >= 50)
            {
                lblError.Text = "This slot is full. Please select another date to visit temple.";
                btnCon.Enabled = false;
            }
            con.Close();
            DateTime date = Convert.ToDateTime(Calendar1.SelectedDate);
            DateTime curr = DateTime.Now;
            if (lblDate.Text == "")
            {
                lblError.Text = "Select a date from the calendar";
                btnCon.Enabled = false;
            }
            else if (date < curr)
            {
                lblError.Text = "Select a valid date from the calendar";
                btnCon.Enabled = false;
            }
        }

        protected void btnSubt_Click(object sender, EventArgs e)
        {
            if (txtVal.Text == "1")
            {
                lblError2.Text = "1 is the minimum value";
            }
            else
            {
                lblError2.Text = "";
                val = Convert.ToInt32(txtVal.Text) - 1;
                txtVal.Text = Convert.ToString(val);

                amt = 500 * val;
                txtAmt.Text = Convert.ToString(amt);
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtVal.Text == "5")
            {
                lblError2.Text = "5 is the maximum value";
            }
            else
            {
                lblError2.Text = "";
                val = Convert.ToInt32(txtVal.Text) + 1;
                txtVal.Text = Convert.ToString(val);

                amt = 500 * val;
                txtAmt.Text = Convert.ToString(amt);
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Temple1.aspx");
        }

        protected void btnCon_Click(object sender, EventArgs e)
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
                
                con.Open();
                string insert1 = "INSERT INTO epass VALUES ('" + tid + "', '" + Session["user"] + "', '" + lblDate.Text + "', '" + txtVal.Text + "', '" + Session["temple"] + "')";
                SqlCommand cmdIns1 = new SqlCommand(insert1, con);
                cmdIns1.ExecuteNonQuery();
                con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from temples where temple_id='" + Session["temple"] + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while(dr.Read())
                {t1 = dr[1].ToString();
                }
                con.Close();
                con.Open();
                cmd = new SqlCommand("select * from users where user_id='"+Session["user"]+"'",con);
            
            dr = cmd.ExecuteReader();
            mail = "Thank You " +txtName.Text+" for booking an E-Pass for "+t1+ ".<br/> <br/> TICKET ID := " + tid+ " . <br/> ARRIVAL DATE := " + Calendar1.SelectedDate.ToString("dd/MM/yyyy") + " . <br/>  Registration for " + txtVal.Text+ " people has been made . <br/>  We Hope For Your Safe and Divineful visit. ";
            MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(TextBox1.Text));
            mailMessage.Subject = "E-Pass Registration Confirmation Mail";
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
                //lblMsg.Text = "Mail is sent to you on the registered Email ID";
                
                con.Close();
            }

            ///// mailing //////////////////////////////  
            
            Response.Redirect("PaymentRedirect.aspx");



        }
    }
}