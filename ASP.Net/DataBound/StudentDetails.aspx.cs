using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace student
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StudentTableConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            if (!IsPostBack)
            {
                Bind();
            }

        }
        public void Bind()
        {
            SqlCommand cmd = new SqlCommand("select * from StudentTable", con);
            SqlDataReader rd = cmd.ExecuteReader();
            rp1.DataSource = rd;
            rp1.DataBind();
            con.Close();

        }
    }
}