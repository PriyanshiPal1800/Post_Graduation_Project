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
    public partial class Temple1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        string map;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["random"].ToString()=="true")
            {
                Response.Redirect("TempleNGOCards.aspx");
            }
            else
            { 
            Session["page"] = "Temple1.aspx";
                if (Convert.ToString(Session["user"]) == "")
                {
                    Response.Redirect("Login1.aspx");
                }
                else
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("Select * from temples", con);
                    SqlDataReader dr1;
                    dr1 = cmd1.ExecuteReader();
                    while (dr1.Read())
                    {
                        if (Convert.ToString(dr1["temple_id"]) == Session["temple"].ToString())
                        {
                            Image1.ImageUrl = dr1["image1"].ToString();
                            btnLocation.Text = "Explore Location";
                            Label1.Text = dr1["temple_name"].ToString();
                            Label6.Text = dr1["about"].ToString();
                            Label2.Text = dr1["contact_no"].ToString();
                            HyperLink1.Text = dr1["email_id"].ToString();
                            Image5.ImageUrl = dr1["image2"].ToString();
                            Image6.ImageUrl = dr1["image3"].ToString();
                            Image7.ImageUrl = dr1["image4"].ToString();
                            Label5.Text = dr1["temple_name"].ToString();
                            Label7.Text = dr1["By_Air"].ToString();
                            Label8.Text = dr1["By_Train"].ToString();
                            Label9.Text = dr1["By_Road"].ToString();
                            map = dr1["map"].ToString();
                            Link1.Text = dr1["darshan_link"].ToString();
                            Link1.NavigateUrl= dr1["darshan_link"].ToString();
                        }
                    }
                    con.Close();
                }
            }
        }

        protected void btnEpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("E_paas_Reg.aspx");
        }

        protected void btnAarti_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aarti_Registration.aspx");
            
        }

        protected void btnLocation_Click(object sender, EventArgs e)
        {

            Response.Redirect(map);
        }
    }
}