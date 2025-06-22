using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Runtime;
using System.Text.RegularExpressions;
using System.Net;
using System.Net.Mail;

namespace Project_demo
{
    public partial class Login1 : System.Web.UI.Page
    {
        string s1,uid,mail,U_name,U_mail;
        int id, c = 0;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");

        
            protected void Page_Load(object sender, EventArgs e)
            {

            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(user_id, 2, len(user_id)-1) As int )) FROM users", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                uid = dr[0].ToString();
                s1 = uid;
            }
            if (uid == "")
            {
                uid = "U0";
            }
            id = Convert.ToInt32(s1) + 1;
            uid = "U" + Convert.ToString(id);
            con.Close();
        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (txtConpwd.Text != txtPwd.Text)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
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
        public static bool isValidPwd(string inputPwd)
        {
            string strRegex = "(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputPwd))
                return true;
            else
                return false;
        }
        public static bool isValidMobileNumber(string inputMobileNumber)
        {
            string strRegex = "^[0-9]{10}$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputMobileNumber))
                return true;
            else
                return false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmdFind = new SqlCommand("SELECT * FROM users WHERE email_id = '" + txtEmail.Text + "'", con);
            SqlDataReader dr;
            dr = cmdFind.ExecuteReader();
            while (dr.Read())
            {
                if (Convert.ToString(dr["email_id"]) == txtEmail.Text)
                {
                    c = 1;
                }
            }
            con.Close();
            lblMsg.Text = "";
            if (c == 1)
            {
                lblMsg.Text = "This user is already registered";
            }
            else if (txtFname.Text != "" && txtLname.Text != "" && txtEmail.Text != "" && txtPwd.Text != "" && txtConpwd.Text != "" && txtConpwd.Text == txtPwd.Text && txtContact.Text != "" && isValidMobileNumber(txtContact.Text) && isValidPwd(txtPwd.Text) && isValidEmail(txtEmail.Text))
            {
                con.Open();
                string insertQuery = "INSERT INTO users VALUES ('" + uid + "', '" + txtFname.Text + "', '" + txtLname.Text + "', '" + txtEmail.Text + "', '" + txtPwd.Text + "', '" + Convert.ToString(txtContact.Text) + "',  'user')";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.ExecuteNonQuery();
                U_name = txtFname.Text + " " + txtLname.Text;
                U_mail = txtEmail.Text;

                mail = "Thank You <b>" + U_name + " <b> for Registering on DIVYA DARSHAN .  ";
                MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(U_mail));
                mailMessage.Subject = "Welcome to Divya Darshan";
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
                
                lblMsg.Text = "Registration Successful!!!";
                txtFname.Text = "";
                txtLname.Text = "";
                txtEmail.Text = "";
                txtPwd.Text = "";
                txtConpwd.Text = "";
                txtContact.Text = "";
                con.Close();
                Response.Redirect("Login1.aspx");
            }
        }
    }
}