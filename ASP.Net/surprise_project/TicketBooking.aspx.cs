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
    public partial class TicketBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Choose the Flights from the given Data Table");
            SqlConnection con = new SqlConnection("server=IN-5CG7310G55\\SQLEXPRESS;database=dxc;integrated security=true");

            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from Flight_details", con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender = "";
            if (RadioButton1.Checked)
                gender = RadioButton1.Text;
            else
                gender = RadioButton2.Text;
            
           // SqlDataReader rd = cmd.ExecuteReader();
           
            string Ticket = "Your Ticket has been Generated:"+"<br/>"+"Passenger Name: " + TextBox1.Text + "<br/>" +
                "Age: " + TextBox2.Text + "<br/>" + "Gender: " + gender + "<br/>" +
                "Flight_Id: "+TextBox3.Text+"<br/>"+ "Flight_Name: "+TextBox4.Text+"</br>"+"Flight_Number: "+TextBox5.Text+
                "<br/>"+"Source: " + TextBox6.Text + "<br/>" + "Destination: " + TextBox7.Text;
            Label1.Text = Ticket;
           
        }
    }
}