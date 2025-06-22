using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Divy_darshan
{
    public partial class Signup : System.Web.UI.Page
    {
        static int i = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='G:\\khushi\\MCA\\SEMESTER II(Jan - May)\\webform\\WebApplication1\\WebApplication1\\App_Data\\Divy_darshan.mdf';Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
                conn.Open();
                string insertQuery = "INSERT INTO users VALUES ('U"+(++i)+"', '" + txtFname.Text + "', '" + txtLname.Text + "', '" + txtEmail.Text + "', '" + txtPwd.Text + "', '" + Convert.ToString(txtContact.Text) + "',  'user')";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.ExecuteNonQuery();
                Response.Write("Registration successful!!");
                txtFname.Text = "";
                txtLname.Text = "";
                txtEmail.Text = "";
                txtPwd.Text = "";
                txtConpwd.Text = "";
                txtContact.Text = "";
                conn.Close();
        }
    }
}