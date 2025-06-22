using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_demo
{
    public partial class Home : System.Web.UI.MasterPage
    {
       // int cnt = 0, fdb = 0;
        string selectCommand, selectCommand2,Donor_name;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Convert.ToString(Session["user"])=="")
            {
                Button7.Text = "Login";
            }
            else 
            { Button7.Text = "Logout";
                Label10.Visible = true;
                Label11.Visible = false;
                Label10.Text = "Welcome";
                con.Open();
                SqlCommand cmdu = new SqlCommand("SELECT * FROM users WHERE user_id='" + Session["user"].ToString() + "' ", con); //taking name of user by user_id   
                SqlDataReader dru;
                dru = cmdu.ExecuteReader();
                if (dru.Read())
                {
                    Label12.Visible = true;
                    Label12.Text = Convert.ToString(dru[1]) + " " + Convert.ToString(dru[2]);
                    Button8.Visible = true;
                    Button8.Text = Convert.ToString(dru[1]).Substring(0, 1);
                }
                con.Close();
            }
            DateTime db, db1;
            
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Calendar ", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            db1 = DateTime.Now;
            while (dr.Read())
            {
                db = Convert.ToDateTime(dr[0].ToString());
                if ( db1.ToString("dd-MM-yyyy") == db.ToString("dd-MM-yyyy"))
                { 
                    
                    TextBox2.Text = db1.ToString("dd-MM-yyyy");
                    TextBox3.Text = dr[1].ToString();
                    break;
                }
                else
                {
                    TextBox2.Text = db1.ToString("dd-MM-yyyy");
                    TextBox3.Text = "No Occasion Today";
                }
                
            }
            con.Close();

            con.Open();
            selectCommand = "SELECT TOP 7 * FROM calendar WHERE date > CONVERT(DATE, GETDATE(), 102)";
            SqlCommand da = new SqlCommand(selectCommand, con);
            SqlDataReader dr1;
            dr1 = da.ExecuteReader();
            DataTable tbl = new DataTable("Occassions");
            DataColumn col;
            DataRow row;
            col = new DataColumn();
            col.DataType = typeof(String);
            col.ColumnName = "DATE";
            tbl.Columns.Add(col);

            col = new DataColumn();
            col.DataType = typeof(String);
            col.ColumnName = "OCCASSION";
            tbl.Columns.Add(col);

            while (dr1.Read())
            {
                row = tbl.NewRow();
                row["Date"] = Convert.ToDateTime(dr1[0]).ToString("dd/MM/yyyy");
                row["Occassion"] = dr1[1];
                tbl.Rows.Add(row);
            }

            ListView1.DataSource = tbl;
            ListView1.DataBind();
            
            con.Close();

            con.Open();
            selectCommand2 = "SELECT * FROM Donation Inner Join users on Donation.user_id=users.user_id ";
            SqlCommand da1 = new SqlCommand(selectCommand2, con);
            SqlDataReader dr2;
            dr2 = da1.ExecuteReader();
            DataTable tb2 = new DataTable("DN");
            DataColumn col1;
            DataRow row1;
            col1 = new DataColumn();
            col1.DataType = typeof(String);
            col1.ColumnName = "user_name";
            tb2.Columns.Add(col1);

            col1 = new DataColumn();
            col1.DataType = typeof(String);
            col1.ColumnName = "Amount";
            tb2.Columns.Add(col1);

            while (dr2.Read())
            {
                row1 = tb2.NewRow();
                if (dr2["show_name"].ToString() == "0")
                {
                    Donor_name = "Anonymous";
                }
                else
                {
                   Donor_name  = dr2["firstname"].ToString()+" "+dr2["lastname"].ToString();
                }
                row1["user_name"] = Donor_name;
                row1["Amount"] = dr2["amount"];


                tb2.Rows.Add(row1);
            }

            ListView2.DataSource = tb2;
            ListView2.DataBind();
            con.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("TempleNGOCards.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SelectionPage.aspx#Temp");
        }
         
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donation.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Button7.Text=="Login")
            { Response.Redirect("Login1.aspx"); }
            else if(Button7.Text=="Logout")
            {
                Session["user"] = "";
                Session["temple"] = "T1";
                Session["ngo"] = "N1";
                Response.Redirect("TempleNGOCards.aspx");
                Button7.Text = "Login";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Location.aspx");
        }

        protected void btnContact_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SelectionPage.aspx#ngo");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }
        protected void btnC_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("Query.aspx");
        }
        protected void btnF_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }
    }
}