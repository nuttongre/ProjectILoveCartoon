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
    public partial class rend : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");

        string user,Total;
        protected void Page_Load(object sender, EventArgs e)
        {
            findUser();
            if (!IsPostBack)
            {
                gridVIEWData();
                GridViewrend.DataSource = dt1;
                GridViewrend.DataBind();
            }
            
            

        }
        


        DataTable dt1 = new DataTable();
        private void gridVIEWData()
        {
            dt1.Columns.Add("Customer", typeof(string));
            dt1.Columns.Add("BookID", typeof(string));
            dt1.Columns.Add("NameBook", typeof(string));
            dt1.Columns.Add("price", typeof(string));
            //dt1.Rows.Add("totalPrice", typeof(string));
            dt1.Columns.Add("totalPrice", typeof(string));
            Session["dtInSession"] = dt1;     //Saving Datatable To Session 
        }
        private void calculateTotal()
        {
            //for(int i=0; i<GridViewren;i++)
            //{

            //}
            Total = GridViewrend.Rows[0].Cells[3].Text;
        }
        protected void findrend_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqladmin = "SELECT * FROM book WHERE BookID = '" + BookIDrend.Text + "' ";
            SqlCommand cmdAdmin = new SqlCommand(sqladmin, con);
            SqlDataReader readerAdmin = cmdAdmin.ExecuteReader();

            readerAdmin.Read();
            if (readerAdmin.HasRows)
            {
                //ใส่ข้อมูลหนังสือในตาราง
                //Label1.Text = readerAdmin[1].ToString();
                if (Session["dtInSession"] != null)
                    dt1 = (DataTable)Session["dtInSession"]; //Getting datatable from session 

                //Int32 total = Convert.ToInt32(txt_quantity.Text) * Convert.ToInt32(txt_price.Text);
                DataRow dr = dt1.NewRow();
                dr["Customer"] = user;
                dr["BookID"] = readerAdmin[0].ToString();
                dr["NameBook"] = readerAdmin[1].ToString();
                dr["price"] = readerAdmin[2].ToString();
               // dr["totalPrice"] = GridViewrend.Rows[0].Cells[3].Text; 
                dt1.Rows.Add(dr);

                Session["dtInSession"] = dt1;     //Saving Datatable To Session 
                GridViewrend.DataSource = dt1;
                GridViewrend.DataBind();


            }
            
            lblShowPrice.Text = Total;
            readerAdmin.Close();
            con.Close();
        }

        protected void comfirmrend_Click(object sender, EventArgs e)
        {
            //GridViewRow row = GridViewrend.SelectedRow;
            string name = GridViewrend.SelectedRow.Cells[0].Text;
            lbltotal.Text = name.ToString();
        }


        private void findUser()
        {
            con.Open();
            string sqladmin = "SELECT * FROM customer WHERE UserID = '" + inputUserIDrend.Text + "' ";
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