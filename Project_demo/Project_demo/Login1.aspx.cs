using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;
using System.Text.RegularExpressions;

namespace Project_demo
{
    public partial class Login11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        
        public bool mailregister(string inputEmail)
        {
            con.Open();
            string selectCommand = "Select * from users where email_id ='" + inputEmail +"'";
            SqlCommand cmd = new SqlCommand(selectCommand, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                con.Close();
                return true;
            }
            con.Close();
            return false;


        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int s1 = 0;          //if user is invalid s1=0 
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM users", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (Convert.ToString(dr["email_id"]) == txtEmail.Text)
                {
                    if (Convert.ToString(dr["password"]) == txtPwd.Text)
                    {
                        s1 = 1;
                        Session["user"] = dr["user_id"];
                    }
                    else
                    {
                        s1 = 2;
                        break;
                    }
                }
            }
            if (s1 == 0)                 // user is not registered
            {
                txtEmail.Text = "";
                txtPwd.Text = "";
                lblError.Text = "Not Registered User!!";
            }
            else if (s1 == 1)              //Login Successful
            {
                if (Convert.ToString(Session["user"]) == "U0")
                {
                    Session["admin"] = true;
                    Response.Redirect("admin/AdminDashboard.aspx");
                }
                else
                {
                    Response.Redirect(Session["page"].ToString());
                }
            }
            else if (s1 == 2)              //correct email & incorrect password
            {
                txtPwd.Text = "";
                lblError.Text = "Wrong Password";
            }
            con.Close();
        }
        public static bool isValidPwd(string inputPwd)
        {
            string strRegex = "(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputPwd))
                return true;
            else
                return false;
        }
        public static bool isValidEmail(string inputEmail)
        {
            int i = 0, k = 0;
            String[] eType = new string[4] { "@gmail.com", "@aol.com", "@rediffmail.com", "@yahoo.com" };
            Boolean[] r = new Boolean[eType.Length];
            for (int j = 0; j < eType.Length; j++)
            {
                if (inputEmail.Contains(eType[j]))
                {
                    k = j;
                    i = eType[j].Length;    //if inputEmail contains given eType then get its length in i
                    break;
                }
            }
            if (i == 0)      //if inputEmail does not contain any given eType than invalid format
                return false;

            String e = inputEmail.Substring(inputEmail.Length - i, i);
            if (e == eType[k])
                return true;
            else
                return false;
        }

        
        protected void btnChange_Click(object sender, EventArgs e)
        {
            int c = 1;
            if (!isValidEmail(txtnewmail.Text))
            {
                c = 0;
            }
            
            if(!mailregister(txtnewmail.Text))
            {
                Label13.Text = "Email not registered !!";
                c = 0;
            }
            if (c == 1)
            {
                if (isValidPwd(txtNewPwd.Text) && txtNewPwd.Text == txtNewConPwd.Text)
                {
                    
                    con.Open();
                    string selectCommand = "Update users Set password='" + txtNewPwd.Text + "' where email_id='" + txtnewmail.Text + "' ";
                    SqlCommand cmd = new SqlCommand(selectCommand, con);
                    cmd.ExecuteNonQuery();
                    
                    selectCommand = "Select * from users where email_id ='" + txtnewmail.Text + "'";
                    cmd = new SqlCommand(selectCommand, con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(dr["email_id"].ToString()));
                        mailMessage.Subject = "Profile Updated";
                        mailMessage.IsBodyHtml = true;
                        mailMessage.Body = "Hello,<br/> Your Password has been changed.";

                        System.Net.NetworkCredential networkCredentials = new System.Net.NetworkCredential("kalpdivyadarshan@gmail.com", "KALP@1234");

                        SmtpClient smtpClient = new SmtpClient();
                        smtpClient.EnableSsl = true;
                        smtpClient.UseDefaultCredentials = false;
                        smtpClient.Credentials = networkCredentials;
                        smtpClient.Host = "smtp.gmail.com";
                        smtpClient.Port = 587;
                        //////To By pass certificate
                        System.Net.ServicePointManager.ServerCertificateValidationCallback = delegate (object s,
                        System.Security.Cryptography.X509Certificates.X509Certificate certificate,
                        System.Security.Cryptography.X509Certificates.X509Chain chain,
                        System.Net.Security.SslPolicyErrors sslPolicyErrors)
                        {
                            return true;
                        };
                        smtpClient.Send(mailMessage);
                    }
                    txtnewmail.Text = "";
                    txtNewPwd.Text = "";
                    txtNewConPwd.Text = "";
                    Panel3.Visible = false;
                    Panel2.Style.Add("opacity", "1");
                    con.Close();
                }
            }
        }
        protected void Link_Click(object sender, EventArgs e)
        {
            Panel2.Style.Add("opacity", "0.5");
            Panel3.Visible = true;
        }
        protected void btnClose1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Panel2.Style.Add("opacity", "1");
            Panel3.Visible = false;
        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (txtNewConPwd.Text != txtNewPwd.Text)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}