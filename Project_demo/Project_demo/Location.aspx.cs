using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project_demo
{
    public partial class Location : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            if (e.PostBackValue == "Jammu and Kashmir")
            {
                Session["location"] = "Jammu and Kashmir";
            }
            else if (e.PostBackValue == "Uttarakhand")
            {
                Session["location"] = "Uttarakhand";
            }
            else if (e.PostBackValue == "Delhi")
            {
                Session["location"] = "Delhi";
            }
            else if (e.PostBackValue == "Uttar Pradesh")
            {
                Session["location"] = "Uttar Pradesh";
            }
            else if (e.PostBackValue == "TamilNadu")
            {
                Session["location"] = "TamilNadu";
            }
            else if (e.PostBackValue == "Maharashtra")
            {
                Session["location"] = "Maharashtra";
            }
            Response.Redirect("LocationTable.aspx");
          
           
        }
        
    }
}