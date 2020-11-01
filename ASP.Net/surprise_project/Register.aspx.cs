using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SurprisePrj
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["User_DetailsConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into User_Details(UserName,Password,Age,Gender)values(@U,@P,@A,@G)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@U", TextBox1.Text);
            cmd.Parameters.AddWithValue("@P", TextBox2.Text);
            cmd.Parameters.AddWithValue("@A", TextBox4.Text);
            if (RadioButton1.Checked)
                cmd.Parameters.AddWithValue("@G", RadioButton1.Text);
            else
                cmd.Parameters.AddWithValue("@G", RadioButton2.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AdminPage.aspx");
        }
    }
}