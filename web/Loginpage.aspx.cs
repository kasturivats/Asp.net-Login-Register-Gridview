using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace web
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webfConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from reg1 where Username='" + usernameText.Text + "'";
            SqlCommand comm = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkPassword = "select Password from reg1 where Username='" + usernameText.Text + "'; ";
                SqlCommand passcm = new SqlCommand(checkPassword, con);
                string password = passcm.ExecuteScalar().ToString().Replace(" ","");

                if (password == passwordText.Text)
                {
                    Session["New"] = usernameText.Text;
                   
                    Response.Redirect("Managerview.aspx");

                }
                else
                {
                    Response.Write("Incorrect password, please try again!");
                }
            }
            else
            {
                Response.Write("User not found!");
            }
            con.Close();
        }
    }
}