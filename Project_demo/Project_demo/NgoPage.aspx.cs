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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["random"].ToString()=="true")
            {
                Response.Redirect("TempleNGOCards.aspx");
            }
            Session["page"] = "NgoPage.aspx";
            if (Convert.ToString(Session["user"]) == "")
            {
                Response.Redirect("Login1.aspx");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from ngo", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (Convert.ToString(dr["ngo_id"]) == Convert.ToString(Session["ngo"]))
                    {
                        Image11.ImageUrl = dr["image1"].ToString();
                        Label13.Text = dr["ngo_name"].ToString();
                        Label10.Text = dr["about"].ToString();

                        String text = Convert.ToString(dr["Our_Reach"]);
                        String[] branch = text.Split(',');
                        int i = 0;
                        foreach (string word in branch)
                        {
                            Label lbl = new Label();
                            lbl.ID = "lbl" + (++i);
                            lbl.Text = word;
                            lbl.BackColor = System.Drawing.Color.Orange;
                            lbl.BorderColor = System.Drawing.Color.DarkKhaki;
                            lbl.BorderStyle = BorderStyle.Groove;
                            lbl.Height = 50;
                            lbl.Width = 120;
                            lbl.Style["text-align"] = "center";
                            lbl.Style["margin"] = "10px";
                            lbl.Style["padding-top"] = "15px";
                            lbl.Style["font-size"] = "22px";
                            Panel1.Controls.Add(lbl);
                        }

                        Label16.Text = dr["address"].ToString() + ", " + dr["location"].ToString();
                        Label17.Text = dr["email_id"].ToString();
                        Label18.Text = dr["contact_no"].ToString();
                        Image9.ImageUrl = dr["image2"].ToString();
                        Image10.ImageUrl = dr["image3"].ToString();
                        Label11.Text = dr["Our_Contribution"].ToString();
                    }
                }
                con.Close();
            }
        }
       
    }
}