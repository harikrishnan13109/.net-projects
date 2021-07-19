using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace hospital
{
    public partial class patiententry_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection sc = new SqlConnection(@"Data source=(localdb)\v11.0; initial catalog=hospitalmanagement; Integrated Security=true");

        protected void Button1_Click(object sender, EventArgs e)
        {
            sc.Open();
            SqlCommand cmd = new SqlCommand("sp_insertdata", sc);
            cmd.Parameters.AddWithValue("patientname", TextBox1.Text);
            cmd.Parameters.AddWithValue("id", TextBox2.Text);
            cmd.Parameters.AddWithValue("gender", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("age", TextBox3.Text);
            cmd.Parameters.AddWithValue("addres", TextBox5.Text);
            cmd.Parameters.AddWithValue("adoc", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("phores", TextBox4.Text);
            cmd.Parameters.AddWithValue("mob", TextBox6.Text);
            cmd.Parameters.AddWithValue("opdate", TextBox7.Text);
            cmd.Parameters.AddWithValue("dep", DropDownList3.SelectedItem.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            Response.Write("<Script>alert('Data Saved Successfully....')</script>");
            sc.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
    }
}