using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DatalistAsgnmt
{
    public partial class ListView : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Student_detailsConnectionString"].ConnectionString);
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
            SqlCommand cmd = new SqlCommand("select * from Student_details", con);
            SqlDataReader rd = cmd.ExecuteReader();

            ListView1.DataBind();
            con.Close();
        }
    }
}