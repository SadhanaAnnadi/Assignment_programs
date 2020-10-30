using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_RegForm
{
    public partial class Student_SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Rbtnece.Checked)
            {
                var c = "";
                if(CheckBox1_ECE.Checked&&CheckBox2_ECE.Checked||CheckBox1_ECE.Checked&&CheckBox3_ECE.Checked||
                    CheckBox2_ECE.Checked&&CheckBox3_ECE.Checked||CheckBox1_ECE.Checked&&CheckBox2_ECE.Checked&&CheckBox3_ECE.Checked)
                {
                    if (CheckBox1_ECE.Checked)
                        c += "You have checked" + CheckBox1_ECE.Text;
                    if (CheckBox2_ECE.Checked)
                        c += "<br/>" + CheckBox2_ECE.Text;
                    if(CheckBox3_ECE.Checked)
                        c+="<br/>" +CheckBox3_ECE.Text;
                    Label3.Text = c;
                }
                else
                {
                    Label1.Text = "Select atleast 2 Options";
                }
               

            }
            if(Rbtncse.Checked)
            {
                var ece = "";
                if (CheckBox4.Checked && CheckBox5.Checked || CheckBox4.Checked && CheckBox6.Checked ||
                    CheckBox5.Checked && CheckBox6.Checked || CheckBox4.Checked && CheckBox5.Checked && CheckBox6.Checked)
                {
                    if (CheckBox4.Checked)
                        ece += "You have checked" + CheckBox4.Text;
                    if (CheckBox5.Checked)
                        ece += "<br/>" + CheckBox5.Text;
                    if (CheckBox6.Checked)
                    {
                        ece += "<br/>" + CheckBox6.Text;
                    }
                    Label3.Text = ece;
                }
                else
                {
                    Label2.Text = "Select atleast 2 Options";
                }

            }
        }


        protected void CheckBox1_ECE_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}