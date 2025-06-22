using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Project_demo
{
    public partial class Query : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        string qid;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(query_id) FROM query", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                qid = dr[0].ToString();
            }
            if (qid == "")
            {
                qid = "Q0";
            }
            String s1 = qid.Substring(1);
            int id = Convert.ToInt32(s1) + 1;
            qid = "Q" + Convert.ToString(id);
            con.Close();

            if (Session["user"].ToString() != "")
            {
                string u = Session["user"].ToString();
                con.Open();
                cmd = new SqlCommand("SELECT * FROM users WHERE user_id='" + u + "'", con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtEmail.Text = dr["email_id"].ToString();
                }
                con.Close();
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
        protected void btnQuery_Click(object sender, EventArgs e)
        {
            if (isValidEmail(txtEmail.Text))
            {
                con.Open();
                SqlCommand cmdIns1 = new SqlCommand("INSERT INTO query VALUES('" + qid + "', '" + txtEmail.Text + "', '" + txtQuery.Text + "', '" + DateTime.Now + "', 0)", con);
                cmdIns1.ExecuteNonQuery();
                MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress("kalpdivyadarshan@gmail.com"));
                mailMessage.Subject = "Query From User";
                mailMessage.IsBodyHtml = true;
                mailMessage.Body = "User: <b>" + txtEmail.Text + "</b><br/><br/>Query is: <br/>" + txtQuery.Text;

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
                lblMsg1.Visible = true;
                lblMsg1.Text = "Query is submitted successfully";
                txtQuery.Text = "";
                con.Close();
            }
        }
    }
}