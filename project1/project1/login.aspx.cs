using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            con.Open();

            string sqlUser = "SELECT * FROM Customer WHERE Email = '" + txtEmail.Text + "' AND Password = '" + txtPassword.Text + "'";
            string sqladmin = "SELECT * FROM admin WHERE Email = '" + txtEmail.Text + "' AND Password = '" + txtPassword.Text + "'";

            SqlCommand cmdUser = new SqlCommand(sqlUser, con);
            SqlCommand cmdAdmin = new SqlCommand(sqladmin, con);


            SqlDataReader readerAdmin = cmdAdmin.ExecuteReader();

            readerAdmin.Read();
            if (readerAdmin.HasRows)
            {
                Response.Write("<script>alert('Welcome Admin')</script>");
                Session["Email"] = readerAdmin["Email"].ToString();
                Session["AdminID"] = readerAdmin["AdminID"].ToString();
                Session["Password"] = readerAdmin["Password"].ToString();
                Session["Name"] = readerAdmin["FirstName"].ToString()+" "+ readerAdmin["LastName"].ToString();
                Response.Redirect("HomeAdmin.aspx");
                
                //Response.Write("Admin Login Success..... !!!");
                //Label1.Text = "Admin Login Success..... !!!";
            }

            else if (!readerAdmin.HasRows)
            {
                readerAdmin.Close();
                SqlDataReader readerUser = cmdUser.ExecuteReader();
                readerUser.Read();
                if (readerUser.HasRows)
                {
                    Session["Email"] = readerUser["Email"].ToString();
                    Session["UserID"] = readerUser["UserID"].ToString();
                    Session["Password"] = readerUser["Password"].ToString();
                    Session["Name"] = readerUser["FirstName"].ToString() + " " + readerUser["LastName"].ToString();
                    Response.Write("<script>alert('Welcome User')</script>");
                    Response.Redirect("home.aspx");
                    
                    //Response.Write("User Login Success..... !!!");
                    //Label1.Text = "User Login Success..... !!!";
                }
                else
                {
                }
                readerUser.Close();
            }
            else
            {
                Response.Write("<script>alert('Don't have your account')</script>");
                Session["Email"] = null;
                Session["Password"] = null;
                Session["Name"] = null;
                Response.Redirect("login.aspx");
                //Label1.Text = "Don't have account..... !!!";
            }
            readerAdmin.Close();
            con.Close();
        }
    }
}