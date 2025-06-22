using System;

namespace Project_demo
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["admin"])==false)
            {
                Response.Redirect("../Login1.aspx");
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Session["admin"] = false;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('You have been logged out');</script>");
            Session["temple"] = "T1";
            Session["ngo"] = "N1";
            Session["user"] = "";
            Response.Redirect("../Login1.aspx");
        }
        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
        protected void btnUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblUsers.aspx");
        }
        protected void btnTemples_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblTemples.aspx");
        }

        protected void btnNgo_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblNgo.aspx");
        }

        protected void btnAarti_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblAartis.aspx");
        }
        protected void btnAartiBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblAartiBook.aspx");
        }

        protected void btnEpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblEpass.aspx");
        }

        protected void btnDonation_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblDonation.aspx");
        }

        protected void btnQuery_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblQuery.aspx");
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblFeedback.aspx");
        }
        protected void btnCalendar_Click(object sender, EventArgs e)
        {
            Response.Redirect("tblCalendar.aspx");
        }
    }
}