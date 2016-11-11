using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class status : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        string userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = Session["Name"].ToString();
            //userID = Session["Email"].ToString();
            //getsession();
            con.Open();
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }
        
        void BindData()
        {
            string data = "SELECT History.LendID , Book.NameBook ,List.DateLend , List.DateReturn , List.Penety FROM Book INNER JOIN History ON Book.BookID = History.BookID INNER JOIN List ON History.LendID = List.LendID inner join customer on List.UserID = customer.UserID where customer.UserID = '" + Session["UserID"].ToString() + "' and History.status = 'no' order by  History.LendID ASC";
            

            SqlDataReader dtReader;
            SqlCommand cmd = new SqlCommand(data, con);
            dtReader = cmd.ExecuteReader();

            //*** BindData to GridView ***//
            GridView1.DataSource = dtReader;
            GridView1.DataBind();

            dtReader.Close();
            dtReader = null;
            con.Close();
            con = null;

        }
    }
}