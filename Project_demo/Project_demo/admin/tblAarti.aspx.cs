using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Project_demo.admin
{
    public partial class tblAarti : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        protected void DetailsView2_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            if (DetailsView2.CurrentMode == DetailsViewMode.ReadOnly)
            {
                DetailsView2.ChangeMode(DetailsViewMode.Edit);
            }
            else if (DetailsView2.CurrentMode == DetailsViewMode.Edit)
            {
                DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);
            }
            else if (DetailsView2.CurrentMode == DetailsViewMode.Insert)
            {
                DetailsView2.ChangeMode(DetailsViewMode.ReadOnly);
            }
        }
        protected void DetailsView2_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            string id="";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT MAX(CAST(SUBSTRING(aarti_id, 2, LEN(aarti_id)-1) AS int)) FROM aarti", con);   //taking maximum ticket_id in epass
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
            id = "A" + Convert.ToString(Aid);
            con.Close();
        }
    }
}