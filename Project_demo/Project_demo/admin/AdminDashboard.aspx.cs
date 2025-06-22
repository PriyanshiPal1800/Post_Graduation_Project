using System;
using System.Data.SqlClient;

namespace Project_demo
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        int c = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "AdminDashboard.aspx";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM users", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblUser.Text = (c - 1).ToString();
            con.Close();

            c = 0;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM temples", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblTemples.Text = c.ToString();
            con.Close();

            c = 0;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM ngo", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblNgo.Text = c.ToString();
            con.Close();

            c = 0;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM aarti_booking", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblAarti.Text = c.ToString();
            con.Close();

            c = 0;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM epass", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblEpass.Text = c.ToString();
            con.Close();

            c = 0;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM query WHERE readmsg=0", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblQuery.Text = c.ToString();
            con.Close();

            c = 0;
            con.Open();
            cmd = new SqlCommand("SELECT * FROM feedback WHERE readmsg=0", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                c++;
            }
            lblFeedback.Text = c.ToString();
            con.Close();
        }            
    }
}