using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Runtime;

namespace Project_demo
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        string tid, s1, s2, nid,Tstay_id, Nstay_id;
        int temp_id,maxt, n_id,maxn;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "TempleNGOCards.aspx";
            Tstay_id = Session["temple"].ToString();
            Nstay_id = Session["ngo"].ToString();
            

            /////////////////////////////// TEMPLE //////////////////////////////////////////////////////////////
            con.Open();
                SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(temple_id, 2, len(temple_id)-1) As int )) FROM temples", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tid = dr[0].ToString();
                    s1 = tid;
                    temp_id = Convert.ToInt32(s1);
                    maxt = temp_id;
                    //Label10.Text = "Max:" + maxt + "selected" + Session["temple"].ToString();
                }
                con.Close();
                ///////////////////////////////// BUTTON 1 //////////////////////////////////////////////////////////
                
                con.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT * from temples ", con);
                SqlDataReader dr1;
                dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    if (Convert.ToInt32(Tstay_id.Substring(1))==maxt+1)
                    {
                        Tstay_id = "T1";
                    }
                    if (Convert.ToString(dr1["temple_id"]) == Tstay_id)
                    {
                        Button1.Text = dr1[1].ToString();
                        Label1.Text = dr1["about"].ToString().Substring(0, 280) + "...";
                        Image1.ImageUrl = dr1["image1"].ToString();
                    }
                }
                con.Close();
                ///////////////////////////////// BUTTON 2 //////////////////////////////////////////////////////////
                con.Open();
                s2 = Tstay_id.Substring(1);
                temp_id = Convert.ToInt32(s2) + 1;
                Tstay_id = "T" + temp_id;
                SqlCommand cmd2 = new SqlCommand("SELECT * from temples ", con);
                SqlDataReader dr2;
                dr2 = cmd2.ExecuteReader();
                while (dr2.Read())
                {
                    if (temp_id == maxt+1)
                    {
                        Tstay_id = "T1";
                    }
                    if (Convert.ToString(dr2["temple_id"]) == Tstay_id)
                    {
                        Button2.Text = dr2[1].ToString();
                        Label2.Text = dr2["about"].ToString().Substring(0, 280) + "...";
                        Image2.ImageUrl = dr2["image1"].ToString();

                    }
                }
                con.Close();
                ///////////////////////////////// BUTTON 3 //////////////////////////////////////////////////////////

                con.Open();
                s2 = Tstay_id.Substring(1);
                temp_id = Convert.ToInt32(s2) + 1;
                Tstay_id = "T" + temp_id;
                SqlCommand cmd3 = new SqlCommand("SELECT * from temples ", con);
                SqlDataReader dr3;
                dr3 = cmd3.ExecuteReader();
                while (dr3.Read())
                {
                    if (temp_id == maxt+1)
                    {
                        Tstay_id = "T1";
                    }
                    if (Convert.ToString(dr3["temple_id"]) == Tstay_id)
                    {
                        Button3.Text = dr3[1].ToString();
                        Label3.Text = dr3["about"].ToString().Substring(0, 280) + "...";
                        Image3.ImageUrl = dr3["image1"].ToString();

                    }
                }
                con.Close();
            
            

            /////////////////////////////// NGO //////////////////////////////////////////////////////////////
            con.Open();
            SqlCommand cmd4 = new SqlCommand("SELECT MAX(CAST(SUBSTRING(ngo_id, 2, len(ngo_id)-1) As int )) FROM ngo", con);
            SqlDataReader dr4;
            dr4 = cmd4.ExecuteReader();
            while (dr4.Read())
            {
               
                maxn =   Convert.ToInt32(dr4[0].ToString());
                n_id = maxn;
               // Label11.Text = "Max:" + maxn + "selected" + Session["ngo"].ToString();
            }
            con.Close();
            ///////////////////////////////// BUTTON 4 //////////////////////////////////////////////////////////

            con.Open();
            SqlCommand cmd5 = new SqlCommand("SELECT * from ngo ", con);
            SqlDataReader dr5;
            dr5 = cmd5.ExecuteReader();
            while (dr5.Read())
            {
                if (Convert.ToInt32(Nstay_id.Substring(1)) == maxt + 1)
                {
                    Nstay_id = "N1";
                }
                if (Convert.ToString(dr5["ngo_id"]) == Nstay_id)
                {
                    Button4.Text = dr5[1].ToString();
                    Label4.Text = dr5["about"].ToString().Substring(0, 280) + "...";
                    Image4.ImageUrl = dr5["image1"].ToString();
                }
            }
            con.Close();
            ///////////////////////////////// BUTTON 5 //////////////////////////////////////////////////////////
            con.Open();
            s2 = Nstay_id.Substring(1);
            n_id = Convert.ToInt32(s2) + 1;
            Nstay_id = "N" + n_id;
            SqlCommand cmd6 = new SqlCommand("SELECT * from ngo ", con);
            SqlDataReader dr6;
            dr6 = cmd6.ExecuteReader();
            while (dr6.Read())
            {
                if (n_id == maxn + 1)
                {
                    Nstay_id = "N1";
                }
                if (Convert.ToString(dr6["ngo_id"]) == Nstay_id)
                {
                    Button5.Text = dr6[1].ToString();
                    Label5.Text = dr6["about"].ToString().Substring(0, 280) + "...";
                    Image5.ImageUrl = dr6["image1"].ToString();

                }
            }
            con.Close();
            ///////////////////////////////// BUTTON 6 //////////////////////////////////////////////////////////

            con.Open();
            s2 = Nstay_id.Substring(1);
            n_id = Convert.ToInt32(s2) + 1;
            Nstay_id = "N" + n_id;
            SqlCommand cmd7 = new SqlCommand("SELECT * from ngo ", con);
            SqlDataReader dr7;
            dr7 = cmd7.ExecuteReader();
            while (dr7.Read())
            {
                if (n_id == maxn + 1)
                {
                    Nstay_id = "N1";
                }
                if (Convert.ToString(dr7["ngo_id"]) == Nstay_id)
                {
                    Button6.Text = dr7[1].ToString();
                    Label6.Text = dr7["about"].ToString().Substring(0, 280) + "...";
                    Image6.ImageUrl = dr7["image1"].ToString();

                }
            }
            con.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
            con.Open();
                SqlCommand cmd = new SqlCommand("select * from temples "+"where temple_name like '"+Button1.Text+"'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                     Session["temple"] = dr[0].ToString();
                      Tstay_id = Session["temple"].ToString();
                   
                }
                Response.Redirect("Temple1.aspx");
                con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
             con.Open();
                SqlCommand cmd = new SqlCommand("select * from temples " + "where temple_name like '" + Button2.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    
                    Session["temple"] = dr[0].ToString();
                    Tstay_id = "T" + (Convert.ToInt32(dr[0].ToString().Substring(1)) - 2);
                }
            
                Response.Redirect("Temple1.aspx");
                con.Close();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
           con.Open();
                SqlCommand cmd = new SqlCommand("select * from temples " + "where temple_name like '" + Button3.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                   
                    Session["temple"] =dr[0].ToString();
                    Tstay_id = "T" + (Convert.ToInt32(dr[0].ToString().Substring(1)) - 2);
                
            }
                Response.Redirect("Temple1.aspx");
                con.Close();
            
        }
        protected void Button4_Click(object sender, EventArgs e)
        {   
            Session["random"] = "false";
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from ngo " + "where ngo_name like '" + Button4.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Session["ngo"] = dr[0].ToString();
                    Nstay_id = Session["ngo"].ToString();

                }
                Response.Redirect("NgoPage.aspx");
                con.Close();

            
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ngo " + "where ngo_name like '" + Button5.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Session["ngo"] = dr[0].ToString();
                Nstay_id = Session["ngo"].ToString();

            }
            Response.Redirect("NgoPage.aspx");
            con.Close();

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ngo " + "where ngo_name like '" + Button6.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Session["ngo"] = dr[0].ToString();
                Nstay_id = Session["ngo"].ToString();

            }
            Response.Redirect("NgoPage.aspx");
            con.Close();

        }
    }
}