using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace project1
{
    public partial class addbook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = DropDownList1.SelectedItem.ToString();
        }

        protected void submindeletebook_Click(object sender, EventArgs e)
        {
            con.Open();

            string sqlString = "SELECT * FROM Book WHERE BookID = '" + deletepro.Text + "'";
            SqlCommand comm = new SqlCommand(sqlString, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                reader.Close();
                string sqlquery = "DELETE FROM Book WHERE BookID ='" + deletepro.Text + "'";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.ExecuteNonQuery();
                Response.Write("<script>alert('การลบสำเร็จ')</script>");
                deletepro.Text = "";
            }
            else
            {
                Response.Write("<script>alert('ไม่พบรหัสหนังสือนี้')</script>");
                deletepro.Text = "";

                reader.Close();


            }
            con.Close();
        }
        string type;
        private void checkType(string name)
        {
            if(name.ToString() == "Action")
            {
                type = "A01";
            }
            else if (name.ToString() == "Comedy")
            {
                type = "C02";
            }
            else if (name.ToString() == "Drama")
            {
                type = "D03";
            }
            else if (name.ToString() == "Horror")
            {
                type = "H04";
            }
            else if (name.ToString() == "Rometic")
            {
                type = "R05";
            }
        }

        protected void submitaddbook_Click(object sender, EventArgs e)
        {
            con.Open();

            string sqlString = "SELECT * FROM Book WHERE BookID = '" + addidbook.Text + "'";
            SqlCommand comm = new SqlCommand(sqlString, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                Response.Write("<script>alert('รหัสหนังสือนี้มีอยู่ในระบบเเล้ว')</script>");


                //reader.Close();
            }
            else
            {
                con.Close();
                if (FileUpload3.PostedFile != null)
                {
                    string FileName = Path.GetFileName(FileUpload3.PostedFile.FileName);

                    //Save files to disk
                    FileUpload3.SaveAs(Server.MapPath("pic/" + FileName));

                    //Add Entry to DataBase
                    //String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                    //SqlConnection con = new SqlConnection(strConnString);
                    // string strQuery = "insert into Promotion (Filename, FilePath) values(@Filename, @FilePath)";
                    // SqlCommand cmd = new SqlCommand(strQuery);
                    string sqlquery = ("INSERT INTO Book (BookID,NameBook,NameType,Price,TotalBook,Description,Picture) VALUES(@BookID,@NameBook,@NameType,@Price,@TotalBook,@Description,@Picture)");
                    SqlCommand cmd = new SqlCommand(sqlquery, con);
                    //cmd.Parameters.AddWithValue("@Filename", FileName);
                    cmd.Parameters.AddWithValue("@Picture", "pic/" + FileName);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    try
                    {
                        con.Open();



                        string BookID = addidbook.Text;
                        cmd.Parameters.AddWithValue("BookID", BookID);
                        string NameBook = addnamebook.Text;
                        cmd.Parameters.AddWithValue("NameBook", NameBook);
                        string NameType = DropDownList1.SelectedValue;
                        cmd.Parameters.AddWithValue("NameType", NameType);
                        //checkType(NameType);
                        //cmd.Parameters.AddWithValue("TypeID", type);
                        string Price = addpricebook.Text;
                        cmd.Parameters.AddWithValue("Price", Price);
                        string TotalBook = addtotalbook.Text;
                        cmd.Parameters.AddWithValue("TotalBook", TotalBook);
                        string Description = descriptionbook.Text;
                        cmd.Parameters.AddWithValue("Description", Description);




                        cmd.ExecuteNonQuery();


                        Response.Write("<script>alert('เพิ่มข้อมูลสำเร็จ')</script>");



                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally
                    {

                        con.Close();
                    }
                }
            }
        }

         

        protected void btnupload_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('test')</script>");


        }
        
    }
}
