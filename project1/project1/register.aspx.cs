using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbutton_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqlString = "SELECT * FROM customer WHERE Email = '" + txtEmail.Text + "'";
            SqlCommand comm = new SqlCommand(sqlString, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                //Response.Redirect("UserPage.aspx");
                Response.Write("This UserID have in my database...!!!");
                lblEmail.Text = "This UserID have in my database...!!!";
                //reader.Close();
            }
            else
            {
                Response.Write("This UserID can use...!!!");
                lblEmail.Text = "This UserID can use...!!!";

                reader.Close();
                //con.Close();
                if (txtPassword.Text == txtPassword_confirm.Text)
                {
                    int countUserID;
                    string sqlcountUserID = "SELECT COUNT(*) FROM customer";
                    SqlCommand c1 = new SqlCommand(sqlcountUserID, con);
                    countUserID = (int)c1.ExecuteScalar();
                    //lblEmail.Text = countUserID.ToString();

                    string sqlquery = "INSERT INTO customer(UserID,Password,FirstName,LastName,Email,TelNo,Address,City,Province,ZipCode) VALUES (@UserID,@Password,@FirstName,@LastName,@Email,@TelNo,@Address,@City,@Province,@ZipCode)";
                    SqlCommand command = new SqlCommand(sqlquery, con);
                    command.Parameters.AddWithValue("UserID", "User " + countUserID);
                    //Password*************
                    string password = txtPassword.Text;
                    command.Parameters.AddWithValue("Password", password);
                    //FirstName * **********
                    string firstName = txtfirstName.Text;
                    command.Parameters.AddWithValue("FirstName", firstName);
                    //lastName***********
                    string lastName = txtlastName.Text;
                    command.Parameters.AddWithValue("LastName", lastName);
                    //email * **********
                    string email = txtEmail.Text;
                    command.Parameters.AddWithValue("Email", email);
                    //TelNo * **********
                    string telNo = txttelNo.Text;
                    command.Parameters.AddWithValue("TelNo", telNo);
                    //Address***********
                    string address = txtaddress.Text;
                    command.Parameters.AddWithValue("Address", address);
                    //City***********
                    string city = txtcity.Text;
                    command.Parameters.AddWithValue("City", city);
                    //Province***********
                    string province = txtprovince.Text;
                    command.Parameters.AddWithValue("Province", province);
                    //ZipCode***********
                    string zipCode = txtzipCode.Text;
                    command.Parameters.AddWithValue("ZipCode", zipCode);


                    command.ExecuteNonQuery();
                }
                else
                {
                    lblpasswordconfirm.Text = "This password is not match...!!!";
                    //txtPassword.Text = "";
                    //txtPassword_confirm.Text = "";
                }
            }
            con.Close();
        }
    }
}