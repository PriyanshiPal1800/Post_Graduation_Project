using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Project_demo
{
    public partial class tblTemples : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(temple_id, 2, LEN(temple_id)-1) AS int)) FROM temples", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                id = dr[0].ToString();
            }
            if (id == "")
            {
                id = "0";
            }
            
            int Aid = Convert.ToInt32(id) + 1;
            id = "T" + Convert.ToString(Aid);
            Session["sid"] = id;
            lbl.Text =" ";
            con.Close();
        }
    }
}