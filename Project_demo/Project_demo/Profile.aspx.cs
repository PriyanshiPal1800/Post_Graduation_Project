using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace Project_demo
{
    public partial class Profile1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        string selectCommand;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                con.Open();
                SqlCommand cmduser = new SqlCommand("Select * from users where user_id='" + Session["user"].ToString() + "'", con);
                SqlDataReader druser;
                druser = cmduser.ExecuteReader();
                while (druser.Read())
                {
                    Label1.Text = druser[1].ToString() + " " + druser[2].ToString();
                    Label2.Text = druser[3].ToString();
                }
                con.Close();

                /////////////////////////////////////Aarti booking ////////////////////////////////////////////
                con.Open();
                selectCommand = "SELECT temples.temple_name, aarti_booking.join_date, aarti.time " +
                                "FROM aarti_booking " +
                                "JOIN aarti " +
                                "ON aarti.aarti_id = aarti_booking.aarti_id " +
                                "JOIN temples " +
                                "ON temples.temple_id = aarti.temple_id" +
                                " WHERE user_id='" + Session["user"].ToString() + "'";
                SqlCommand da = new SqlCommand(selectCommand, con);
                SqlDataReader dr1;
                dr1 = da.ExecuteReader();
                DataTable tbl = new DataTable("Aarti_attended");
                DataColumn col;
                DataRow row;

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "Temple_Name";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "join_date";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "Time";
                tbl.Columns.Add(col);

                while (dr1.Read())
                {
                    row = tbl.NewRow();
                    row["Temple_Name"] = dr1["temple_name"].ToString();
                    row["join_date"] = Convert.ToDateTime(dr1["join_date"]).ToString("dd/MM/yyyy");
                    row["Time"] = dr1["time"];
                    tbl.Rows.Add(row);
                }
                ListView1.DataSource = tbl;
                ListView1.DataBind();
                con.Close();
                ////////////////////////////////////////// E-Pass  //////////////////////////////////////////////////////// 

                tbl = new DataTable("Epass_taken");
                //DataColumn col;
                //DataRow row;

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "Temple_Name";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "Date";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "No_of_people";
                tbl.Columns.Add(col);

                con.Open();
                selectCommand = "SELECT temples.temple_name, epass.date_to_come, epass.no_of_people FROM epass INNER JOIN temples ON temples.temple_id = epass.temple_id WHERE user_id='" + Session["user"] + "'";
                da = new SqlCommand(selectCommand, con);
                //SqlDataReader dr1;
                dr1 = da.ExecuteReader();
                while (dr1.Read())
                {
                    row = tbl.NewRow();
                    row["Temple_Name"] = dr1["temple_name"].ToString();
                    row["Date"] = Convert.ToDateTime(dr1["date_to_come"]).ToString("dd/MM/yyyy");
                    row["No_of_people"] = dr1["no_of_people"];
                    tbl.Rows.Add(row);
                }
                ListView2.DataSource = tbl;
                ListView2.DataBind();
                con.Close();


                /////////////////////////////Temple Donation//////////////////////////////////////////
                con.Open();
                selectCommand = "SELECT temples.temple_name, donation.date, donation.amount " +
                                "FROM donation " +
                                "JOIN temples " +
                                "ON donation.temple_id = temples.temple_id " +
                                "WHERE user_id='" + Session["user"].ToString() + "'";
                da = new SqlCommand(selectCommand, con);
                //SqlDataReader dr1;
                dr1 = da.ExecuteReader();
                tbl = new DataTable("temple_donation");
                //DataColumn col;
                //DataRow row;

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "temple_Name";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "date";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "amount";
                tbl.Columns.Add(col);

                while (dr1.Read())
                {
                    row = tbl.NewRow();
                    row["temple_Name"] = dr1["temple_name"].ToString();
                    row["date"] = Convert.ToDateTime(dr1["date"]).ToString("dd/MM/yyyy");
                    row["amount"] = dr1["amount"];
                    tbl.Rows.Add(row);
                }
                ListView3.DataSource = tbl;
                ListView3.DataBind();
                con.Close();

                ///////////////////////////////NGO Donation /////////////////////////////

                con.Open();
                selectCommand = "SELECT ngo.ngo_name, donation.date, donation.amount " +
                                "FROM donation " +
                                "JOIN ngo " +
                                "ON donation.ngo_id = ngo.ngo_id " +
                                "WHERE user_id='" + Session["user"].ToString() + "'";
                da = new SqlCommand(selectCommand, con);
                // SqlDataReader dr1;
                dr1 = da.ExecuteReader();
                tbl = new DataTable("NGO_donation");
                //DataColumn col;
                // DataRow row;

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "Ngo_Name";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "date";
                tbl.Columns.Add(col);

                col = new DataColumn();
                col.DataType = typeof(String);
                col.ColumnName = "amount";
                tbl.Columns.Add(col);

                while (dr1.Read())
                {
                    row = tbl.NewRow();
                    row["Ngo_Name"] = dr1["ngo_name"].ToString();
                    row["date"] = Convert.ToDateTime(dr1["date"]).ToString("dd/MM/yyyy");
                    row["amount"] = dr1["amount"];
                    tbl.Rows.Add(row);
                }
                ListView4.DataSource = tbl;
                ListView4.DataBind();
                con.Close();
            }
        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (txtConPwd.Text != txtNewPwd.Text)
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
        public static bool isValidMobileNumber(string inputMobileNumber)
        {
            string strRegex = "^[0-9]{10}$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputMobileNumber))
                return true;
            else
                return false;
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int c = 1;
            if (edit_mail.Text == "" || edit_namef.Text == "" || edit_namel.Text == "" || edit_phone.Text == "" || !isValidEmail(edit_mail.Text) || !isValidMobileNumber(edit_phone.Text))
            {
                c = 0;
            }
            if (c == 1)
            {
                ImgButton.Enabled = true;
                Panel1.Visible = false;
                con.Open();
                selectCommand = "update users " +
                                "set email_id='" + edit_mail.Text + "', " +
                                "firstname='" + edit_namef.Text + "', " +
                                "lastname='" + edit_namel.Text + "', " +
                                "contact_no='" + edit_phone.Text + "' " +
                                "where user_id='" + Session["user"] + "' ";
                SqlCommand cmd = new SqlCommand(selectCommand, con);

                cmd.ExecuteNonQuery();

                con.Close();

                con.Open();
                SqlCommand cmduser = new SqlCommand("Select * from users where user_id='" + Session["user"].ToString() + "'", con);
                SqlDataReader dr;
                dr = cmduser.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = dr[1].ToString() + " " + dr[2].ToString();
                    Label2.Text = dr[3].ToString();
                }
               
                Label label12 = (Label)Page.Master.FindControl("label12");
                label12.Text = edit_namef.Text + " " + edit_namel.Text;

                MailMessage mailMessage = new MailMessage(new MailAddress("kalpdivyadarshan@gmail.com"), new MailAddress(Label2.Text));
                mailMessage.Subject = "Profile Updated";
                mailMessage.IsBodyHtml = true;
                mailMessage.Body = "Hello,<br/> Your Profile has been updated.";

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
                Panel2.Style.Add("opacity", "1");
                Panel3.Visible = false;
                ImgButton.Enabled = true;
                con.Close();
            }
        }

        protected void ImgButton_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            ImgButton.Enabled = false;
            Panel2.Style.Add("opacity", "0.5");
            Panel1.Visible = true;
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from users where user_id='" + Session["user"] + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                edit_mail.Text = dr["email_id"].ToString();
                edit_namef.Text = dr["firstname"].ToString();
                edit_namel.Text = dr["lastname"].ToString();
                edit_phone.Text = dr["contact_no"].ToString();
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
        protected void btnChange_Click(object sender, EventArgs e)
        {
            if (isValidPwd(txtNewPwd.Text) && txtNewPwd.Text == txtConPwd.Text)
            {
                con.Open();
                selectCommand = "Update users Set password='" + txtNewPwd.Text + "' where user_id='" + Session["user"] + "' ";
                SqlCommand cmd = new SqlCommand(selectCommand, con);
                cmd.ExecuteNonQuery();

                selectCommand = "Select * from users where user_id='" + Session["user"].ToString() + "'";
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
                Panel2.Style.Add("opacity", "1");
                Panel3.Visible = false;
                ImgButton.Enabled = true;
            }
        }
        protected void btnClose_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Panel2.Style.Add("opacity", "1");
            Panel1.Visible = false;
            ImgButton.Enabled = true;
        }
        protected void btnClose1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Panel2.Style.Add("opacity", "1");
            Panel3.Visible = false;
            ImgButton.Enabled = true;
        }
        protected void Link_Click(object sender, EventArgs e)
        {
            Panel2.Style.Add("opacity", "0.5");
            Panel1.Visible = false;
            Panel3.Visible = true;
        }
    }
}

