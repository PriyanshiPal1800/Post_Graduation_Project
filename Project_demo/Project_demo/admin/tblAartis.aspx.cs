using System;
using System.Data.SqlClient;

namespace Project_demo.admin
{
    public partial class tblAartis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(TempleList.SelectedValue=="Select")
            {
                ListView1.Visible = false;
            }
            string id = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(aarti_id, 2, LEN(aarti_id)-1) AS int)) FROM aarti", con);   //taking maximum ticket_id in epass
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
            id = "A" + Convert.ToString(Aid);
            Session["sid"] = id;
            lblID.Text ="";
            con.Close();
        }
        protected void TempleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TempleList.SelectedValue == "Select")
            {
                ListView1.Visible = false;
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM temples WHERE temple_name='" + TempleList.SelectedValue + "'", con);   //taking maximum ticket_id in epass
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Session["Tid"] = Convert.ToString(dr[0]);
                }
                con.Close();
                ListView1.Visible = true;
                /*string selectCommand = "SELECT [aarti_id], [time] , [url] " +
                                       "FROM [aarti] " +
                                       "WHERE [temple_id] ='" + Convert.ToString(dr["temple_id"]) + "'";
                SqlDataSource4.SelectCommand = selectCommand;*/
            }
        }
    }
}