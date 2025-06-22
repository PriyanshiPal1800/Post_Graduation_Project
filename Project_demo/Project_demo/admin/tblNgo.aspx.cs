using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Project_demo.admin
{
    public partial class tblNgo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            string id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(ngo_id, 2, LEN(ngo_id)-1) AS int)) FROM ngo", con);   //taking maximum ticket_id in epass
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                id = dr[0].ToString();
            }
            if (id == "")
            {
                id = "0";
            }
        
            int Aid = Convert.ToInt32(id) + 1;
            id = "N" + Convert.ToString(Aid);
            dr.Close();
            Session["sid"] = id;
            lblid.Text = id;
            con.Close();
        }
    }
}
