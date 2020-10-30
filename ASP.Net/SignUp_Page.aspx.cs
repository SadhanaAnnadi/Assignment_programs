using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Signup_form
{
    public partial class SignUp_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SignUpConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into SignUpTable(Name,Email,Password,Gender,City)values(@N,@E,@P,@G,@C)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@N", TextBox1.Text);
            cmd.Parameters.AddWithValue("@E", TextBox2.Text);
            cmd.Parameters.AddWithValue("@P", TextBox3.Text);
            if(TextBox3.Text!=TextBox4.Text)
            {
                Label1.Text="Please give same password as above";
            }
            else {
                if (RadioButton1.Checked)
                    cmd.Parameters.AddWithValue("@G", RadioButton1.Text);
                else
                    cmd.Parameters.AddWithValue("@G", RadioButton2.Text);

                cmd.Parameters.AddWithValue("@C", DropDownList1.SelectedItem.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminPage.aspx");
            }
            
        }
        
    }
}