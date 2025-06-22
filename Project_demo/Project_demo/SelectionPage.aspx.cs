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
    public partial class SelectionPage : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='E:\\Khushi\\DB.mdf';Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "SelectionPage.aspx";
            
            string selectCommand;
        //For dropdown1
        selectCommand = "SELECT DISTINCT[location] FROM[temples] ORDER BY[location]";
            SqlDataSource2.SelectCommand = selectCommand;

            //For list1
          /*  selectCommand = "SELECT [image1], [temple_name] , [location], [temple_id] " +
                            "FROM [temples] " +
                            "ORDER BY [temple_name]"; 
            SqlDataSource1.SelectCommand = selectCommand;*/

            //For dropdown2
            selectCommand = "SELECT DISTINCT [location] FROM [ngo] ORDER BY [location]";
            SqlDataSource4.SelectCommand = selectCommand;

            //For list2
            selectCommand = "SELECT [image1], [ngo_name] , [location], [ngo_id] " +
                            "FROM [ngo] " +
                            "ORDER BY [ngo_name]";
            SqlDataSource3.SelectCommand = selectCommand;
        }
    //TEMPLE PART
    protected void btnVisit_Click(object sender, EventArgs e)
    {
            Session["random"] = "false";
            Button btn = (sender as Button);
        Session["temple"] = btn.CommandArgument;
        Response.Redirect("Temple1.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
            if (DropDownList1.SelectedValue == "NA")
            {
                string selectCommand = "SELECT [image1], [temple_name] , [location], [temple_id] " +
                                       "FROM [temples] " +
                                       "ORDER BY [temple_name]";
                SqlDataSource1.SelectCommand = selectCommand;
                txtSearch1.Text = "";
            }
            else
            {
                string search = DropDownList1.SelectedValue;
                string selectCommand = "SELECT [image1], [temple_name] , [location], [temple_id] " +
                                       "FROM [temples] " +
                                       "WHERE [location] ='" + search + "'" +
                                       "ORDER BY [temple_name]";
                SqlDataSource1.SelectCommand = selectCommand;
                txtSearch1.Text = "";
            }
           
        }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = "NA";
        if (txtSearch1.Text != "")
        {
            string search = txtSearch1.Text;
            string selectCommand = "SELECT [image1], [temple_name], [location], [temple_id] " +
                                   "FROM [temples] " +
                                   "WHERE [temple_name] LIKE'%" + search + "%'" +
                                   "ORDER BY [temple_name]";
            SqlDataSource1.SelectCommand = selectCommand;
            txtSearch1.Focus();
        }
    }
    //NGO PART
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
               if (DropDownList2.SelectedValue == "NA")
               {
                   string selectCommand = "SELECT [image1], [ngo_name] , [location], [ngo_id] " +
                                          "FROM [ngo] " +
                                          "ORDER BY [ngo_name]";
                   SqlDataSource3.SelectCommand = selectCommand;
                   txtSearch2.Text = "";
               }
               else
               {
                   string search = DropDownList2.SelectedValue;
                   string selectCommand = "SELECT [image1], [ngo_name] , [location], [ngo_id] " +
                                          "FROM [ngo] " +
                                          "WHERE [location] ='" + search + "'" +
                                          "ORDER BY [ngo_name]";
                   SqlDataSource3.SelectCommand = selectCommand;
                   txtSearch2.Text = "";
               }
           // Label10.Text = DropDownList2.SelectedValue;
    }
    protected void btnSearch2_Click(object sender, EventArgs e)
    {
        DropDownList2.SelectedValue = "NA";
        if (txtSearch2.Text != "")
        {
            string search = txtSearch2.Text;
            string selectCommand = "SELECT [image1], [ngo_name], [location], [ngo_id] " +
                                   "FROM [ngo] " +
                                   "WHERE [ngo_name] LIKE'%" + search + "%'" +
                                   "ORDER BY [ngo_name]";
            SqlDataSource3.SelectCommand = selectCommand;
            txtSearch2.Focus();
        }
    }
    protected void btnVisit2_Click(object sender, EventArgs e)
    {
            Session["random"] = "false";
            Button btn = (sender as Button);
        Session["ngo"] = btn.CommandArgument;
        Response.Redirect("NgoPage.aspx");
    }
}
}