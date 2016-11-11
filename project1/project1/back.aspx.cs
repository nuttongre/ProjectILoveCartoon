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
    public partial class back : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {
            findUser();
            if (!IsPostBack)
            {
                gridVIEWData();
                GridViewback.DataSource = dt1;
                GridViewback.DataBind();
            }
        }

        DataTable dt1 = new DataTable();
        private void gridVIEWData()
        {
            dt1.Columns.Add("Customer", typeof(string));
            dt1.Columns.Add("BookID", typeof(string));
            dt1.Columns.Add("NameBook", typeof(string));
            
            //dt1.Columns.Add("totalPrice", typeof(string));
            Session["dtInSession"] = dt1;     //Saving Datatable To Session 
        }
        string user;
        protected void findback_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqlcus = "SELECT FirstName FROM Customer WHERE UserID ='" + UserIDback.Text + "'";
            SqlCommand cmdcus = new SqlCommand(sqlcus, con);
            SqlDataReader readercus = cmdcus.ExecuteReader();
            readercus.Read();
            namecus.Text = Convert.ToString(readercus[0]);


            string sqladmin = "SELECT BookID,NameBook FROM Book WHERE BookID = '" + BookIDback.Text + "' ";
            SqlCommand cmdAdmin = new SqlCommand(sqladmin, con);
            SqlDataReader readerAdmin = cmdAdmin.ExecuteReader();
            readerAdmin.Read();
            if (readerAdmin.HasRows)
            {
                //ใส่ข้อมูลหนังสือในตาราง
                //Label1.Text = readerAdmin[1].ToString();
                //if (Session["dtInSession"] != null)
                //    dt1 = (DataTable)Session["dtInSession"]; //Getting datatable from session 

                //Int32 total = Convert.ToInt32(txt_quantity.Text) * Convert.ToInt32(txt_price.Text);
                //DataRow dr = dt1.NewRow();
                //dr["BookID"] = readerAdmin[0].ToString();
                //dr["NameBook"] = readerAdmin[1].ToString();
                //dr["totalPrice"] = total;
                //dt1.Rows.Add(dr);

               /* Session["dtInSession"] = dt1; */    //Saving Datatable To Session 
                GridViewback.DataSource = readerAdmin;
                GridViewback.DataBind();

                readerAdmin.Close();
            }
            



                con.Close();
            
        }
        private void findUser()
        {
            con.Open();
            string sqladmin = "SELECT * FROM customer WHERE UserID = '" + UserIDback.Text + "' ";
            SqlCommand cmdAdmin = new SqlCommand(sqladmin, con);


            SqlDataReader readerAdmin = cmdAdmin.ExecuteReader();

            readerAdmin.Read();
            if (readerAdmin.HasRows)
            {
                user = readerAdmin[2].ToString(); ;
                //Label1.Text = user;

            }
            readerAdmin.Close();
            con.Close();
        }
    }
}