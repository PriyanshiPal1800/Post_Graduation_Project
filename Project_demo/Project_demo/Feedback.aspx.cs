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
    public partial class Feedback : System.Web.UI.Page
    {SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

            

            if (Session["user"].ToString() != "")
            {
                string u = Session["user"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id='" + u + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtEmail.Text = dr["email_id"].ToString();
                }
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
        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            if (isValidEmail(txtEmail.Text) == true)
            {
                con.Open();
                SqlCommand cmdIns1 = new SqlCommand("INSERT INTO feedback(email_id, message, date, readmsg) VALUES('" + txtEmail.Text + "', '" + txtFeedback.Text + "', '" + DateTime.Now + "', 0)", con);
                cmdIns1.ExecuteNonQuery();
                lblMsg1.Visible = true;
                lblMsg1.Text = "Feedback Received. Thank you!";
                con.Close();
            }
        }
    }
}