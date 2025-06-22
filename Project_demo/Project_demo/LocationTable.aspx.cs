using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_demo
{
    public partial class LocationTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
            Button Button1 = (sender as Button);
            Session["temple"] = Button1.CommandArgument;
            Response.Redirect("Temple1.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["random"] = "false";
            Button Button2 = (sender as Button);
            Session["ngo"] = Button2.CommandArgument;
            Response.Redirect("NgoPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["location"] = "";
            Response.Redirect("Location.aspx");
        }

       
    }
}