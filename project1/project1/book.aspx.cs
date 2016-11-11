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
    public partial class book : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {
            //con.Open();
            //SqlDataAdapter D = new SqlDataAdapter("SELECT Picture FROM Book WHERE bookid = '" + 002 + "'", con);
            //DataTable dt = new DataTable();
            ////lblamount.Text = p;
            //D.Fill(dt);
            //DataList1.DataSource = dt;
            //DataList1.DataBind();

            //con.Open();
            //LoadSubjects1();
            //Test();

            //Label1.Text = typebook.SelectedValue;
        }

        protected void findbook_Click(object sender, EventArgs e)
        {
            //con.Open();
            //string sqlUser = "SELECT NamePromotion from Promotion";
            //SqlCommand cmdUser = new SqlCommand(sqlUser, con);
            //SqlDataReader reader = cmdUser.ExecuteReader();
            //string a;
            //if (reader.Read())
            //{

            //    a = reader[0].ToString();

            //}
        }

        private void Test()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from book where Namebook ='" + namebook.SelectedValue + "'", con);
            //cmd.ExecuteReader();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                lblnamebook.Text = reader[1].ToString();
                lbltypebook.Text = reader[10].ToString();
                lblprice.Text = reader[2].ToString();
                lblamount.Text = reader[4].ToString();
                lblDescription.Text = reader[7].ToString();
            }
            //namebook.DataBind();
        }

        private void LoadSubjects1()
        {
            typebook.Items.Clear();
            string selectSQL = "Select * from Type";

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;

            try
            {
                ListItem newItem = new ListItem();
                //newItem.Text = "--เลือกประเภท--";
                //newItem.Value = "0";
                //typebook.Items.Add(newItem);

                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    newItem = new ListItem();
                    newItem.Text = reader["NameType"].ToString();
                    newItem.Value = reader["TypeID"].ToString();
                    typebook.Items.Add(newItem);
                }
                reader.Close();
            }
            catch (Exception err)
            {
                //TODO
            }
            finally
            {
                con.Close();
            }
        }

        protected void typebook_TextChanged(object sender, EventArgs e)
        {
            namebook.Items.Clear();
            string selectSQL = "Select * from Book WHERE NameType = '" + typebook.SelectedValue + "'";
            
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;

            try
            {
                ListItem newItem = new ListItem();
                newItem.Text = "--เลือกชื่อเรื่อง--";
                newItem.Value = "0";
                namebook.Items.Add(newItem);

                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    newItem = new ListItem();
                    newItem.Text = reader["NameBook"].ToString();
                    newItem.Value = reader["BookID"].ToString();
                    namebook.Items.Add(newItem);
                }
                reader.Close();
            }
            catch (Exception err)
            {
                //TODO
            }
            finally
            {
                con.Close();
            }
        }
        private void LoadSubjects()
        {
            //string book = "Select * from Book";
            //string type = "Select * from Type";
            //SqlDataAdapter adpt = new SqlDataAdapter(type, con);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //typebook.DataSource = dt;
            //typebook.DataBind();
            //typebook.DataTextField = "NameType";
            //typebook.DataValueField = "TypeID";
            //typebook.DataBind();

            //string book = "Select * from Book where TypeID = '" + typebook.SelectedItem.Text + "'";
            ////string book = "Select * from Book";
            //SqlDataAdapter adpt1 = new SqlDataAdapter(book, con);
            //DataTable dt1 = new DataTable();
            //adpt1.Fill(dt1);
            //namebook.DataSource = dt1;
            //namebook.DataBind();
            //namebook.DataTextField = "NameBook";
            //namebook.DataValueField = "BookID";
            //namebook.DataBind();


            //volumebook.DataSource = dt;
            //volumebook.DataBind();
            //volumebook.DataTextField = "FirstName";
            //volumebook.DataValueField = "AdminID";
            //volumebook.DataBind();

            //string sqladmin = "SELECT NameType FROM Type";

            //SqlCommand cmdAdmin = new SqlCommand(sqladmin, con);


            //SqlDataReader readerAdmin = cmdAdmin.ExecuteReader();

            //readerAdmin.Read();


            //readerAdmin.Close();
            //con.Close();
        }
        
        protected void findbook_Click1(object sender, EventArgs e)
        {
            //Test();
            //lblnamebook.Text = "testttt";

            //con.Open();

            string selectSQL = "SELECT* from book where BookID = '" + namebook.SelectedValue + "'";
            //SqlDataAdapter D = new SqlDataAdapter("SELECT Picture FROM Book WHERE BookID = '" + namebook.SelectedValue + "", con);
            //DataTable dt = new DataTable();
            

            lblnamebook.Text = selectSQL;
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            //SqlCommand cmd = new SqlCommand("SELECT * from book where Namebook ='" + namebook.SelectedValue + "'", con);
            SqlDataAdapter D = new SqlDataAdapter("SELECT Picture FROM Book WHERE book.BookID = '" + namebook.SelectedValue + "'", con);
            DataTable dt = new DataTable();
            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    lblnamebook.Text = reader["NameBook"].ToString();
                    lbltypebook.Text = reader["NameType"].ToString();
                    lblprice.Text = reader["Price"].ToString();
                    lblamount.Text = reader["PresentBook"].ToString();
                    lblDescription.Text = reader["Description"].ToString();
                    string p = reader["Picture"].ToString();
                    //SqlDataAdapter D = new SqlDataAdapter("SELECT Picture FROM Book WHERE book.BookID = '" + namebook.SelectedValue + "'", con);
                    //DataTable dt = new DataTable();
                    //lblamount.Text = p;
                    //D.Fill(dt);
                    //DataList1.DataSource = dt;
                    //DataList1.DataBind();
                }
                reader.Close();
                D.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            catch (Exception err)
            {
                //TODO
            }
            finally
            {
                con.Close();
            }
        }

        protected void typebook_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void namebook_TextChanged(object sender, EventArgs e)
        {
            //SqlDataAdapter D = new SqlDataAdapter("SELECT Picture FROM Book WHERE book.BookID = '"+namebook.SelectedValue +"'", con);
            //DataTable dt = new DataTable();
            ////lblamount.Text = p;
            //D.Fill(dt);
            //DataList1.DataSource = dt;
            //DataList1.DataBind();
        }
    }
}