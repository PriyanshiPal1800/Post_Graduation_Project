
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;

namespace Project_demo
{
    public class Global : System.Web.HttpApplication
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");

        protected void Application_Start(object sender, EventArgs e)
        {
            
        }
int maxt, maxn;
        protected void Session_Start(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(temple_id, 2, len(temple_id)-1) As int )) FROM temples", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                maxt = Convert.ToInt32(dr[0].ToString());
            }
            con.Close();
            Random rnd = new Random();
            int r1 = rnd.Next(1, maxt - 1);
            Session["user"] = "";
            Session["temple"] = "T"+r1;
            con.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT MAX(CAST(SUBSTRING(ngo_id, 2, len(ngo_id)-1) As int )) FROM ngo", con);
            SqlDataReader dr2;
            dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                maxn = Convert.ToInt32(dr2[0].ToString());

            }
            con.Close();

             r1 = rnd.Next(1, maxn - 1);
            Session["ngo"] = "N" + r1;
            Session["page"] = "TempleNGOPage.aspx";
            Session["location"] = "";
            Session["random"] = "true";
            Session["admin"] = "false";
            Session["sid"] = "";
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}