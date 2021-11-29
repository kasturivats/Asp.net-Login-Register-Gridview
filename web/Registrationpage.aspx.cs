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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webfConnectionString"].ConnectionString);
                con.Open();
                string checkemail = "select count(*) from reg1 where Email='" + email.Text + "'";
                SqlCommand comm =  new SqlCommand(checkemail, con);
                int temp= Convert.ToInt32(comm.ExecuteScalar().ToString());
                if(temp==1)
                {
                    Response.Write("This email id is already registered!");
                }
                con.Close();

            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void regbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["webfConnectionString"].ConnectionString);
                con.Open();
                string insertQuery = "insert into reg1 (Username, Email, Contact, Country,Password) values (@u,@e,@c,@ct,@p)";
                SqlCommand comm = new SqlCommand(insertQuery, con);
                comm.Parameters.AddWithValue("@u", user.Text);
                comm.Parameters.AddWithValue("@e", email.Text);
                comm.Parameters.AddWithValue("@c", contact.Text);
                comm.Parameters.AddWithValue("@ct", country.SelectedValue);
                comm.Parameters.AddWithValue("@p", password.Text);

                comm.ExecuteNonQuery();
                Response.Redirect("Managerview.aspx");
                Response.Write("Registration is successful");
                con.Close();

            }
            catch(Exception er)
            {
                Response.Write(er.Message);
            }
        }
    }
}