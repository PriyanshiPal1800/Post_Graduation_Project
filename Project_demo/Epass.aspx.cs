using System;
using System.Data.SqlClient;

namespace Divya_Darshan
{
    public partial class Epass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='G:\\khushi\\MCA\\SEMESTER II(Jan - May)\\webform\\WebApplication1\\WebApplication1\\App_Data\\Divy_darshan.mdf';Integrated Security=True");
        String t = "T01", u = "U01", n, date = "";
        int id = 0, val = 0, tid = 0, amt = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_id='" + u + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            txtName.Text = Convert.ToString(dr[0]) + " " + Convert.ToString(dr[1]);
            lblError.Text = "";
            txtVal.Text = Convert.ToString(val);
            con.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            con.Open();
            int count = 0;
            date = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            SqlCommand cmd = new SqlCommand("SELECT no_of_people FROM epass WHERE date='" + date + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                count += Convert.ToInt32(dr["no_of_people"]);
            }
            if (count >= 50)
            {
                lblError.Text = "This Quota is full. Please select another date to visit temple.";
            }
            con.Close();
        }

        protected void btnSubt_Click(object sender, EventArgs e)
        {
            if (txtVal.Text == "1")
            {
                lblError.Text = "1 is the minimum value";
            }
            else
            {
                val = int.Parse(txtVal.Text) - 1;
                txtVal.Text = Convert.ToString(val);
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtVal.Text == "5")
            {
                lblError.Text = "5 is the maximum value";
            }
            else
            {
                val = int.Parse(txtVal.Text) + 1;
                txtVal.Text = Convert.ToString(val);
            }
        }

        protected void txtVal_TextChanged(object sender, EventArgs e)
        {
            amt = 500 * val;
            txtAmt.Text = Convert.ToString(amt);
        }

        protected void btnCon_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmdIns1 = new SqlCommand("INSERT INTO epass VALUES('P" + id + "', '" + u + "', " + date + ", " + val + ", '" + t + "')");
            cmdIns1.ExecuteNonQuery();
            SqlCommand cmdIns2 = new SqlCommand("INSERT INTO transaction VALUES('TD" + tid + "', '" + u + "', 'P" + id + "', '" + date + "', '" + amt + "', '" + t + "', 'EPass', 'null')");
            cmdIns2.ExecuteNonQuery();
            id++;
            tid++;
            con.Close();
        }
    }
}