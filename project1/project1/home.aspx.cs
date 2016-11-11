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
    public partial class home : System.Web.UI.Page
    {
        SqlConnection cmd = new SqlConnection("Data Source = dpwhn0986y.database.windows.net; Initial Catalog = PreProject; Persist Security Info = True; User ID = Preproject; Password = Engineering21");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlDataAdapter D = new SqlDataAdapter("SELECT Picpromotion FROM Promotion WHERE Picpromotion =Promotion.Picpromotion", cmd);
            //DataTable dt = new DataTable();
            //D.Fill(dt);
            //DataList1.DataSource = dt;
            //DataList1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter D = new SqlDataAdapter("SELECT Picpromotion FROM Promotion WHERE Picpromotion =Promotion.Picpromotion", cmd);
            DataTable dt = new DataTable();
            D.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}