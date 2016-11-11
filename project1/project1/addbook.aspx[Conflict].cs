using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace project1
{
    public partial class addbook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submindeletebook_Click(object sender, EventArgs e)
        {
            con.Open();

            string sqlString = "SELECT * FROM Book WHERE BookID = '" + submindeletebook.Text + "'";
            SqlCommand comm = new SqlCommand(sqlString, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                string sqlCommand = "DELETE FROM testtable1 WHERE ID =" + submindeletebook.Text;
                SqlCommand q = new SqlCommand(sqlCommand, con);
                q.ExecuteNonQuery();
                Response.Write("<script>alert('การลบหนังสือสำเร็จ')</script>");
            }
            else
            {
                Response.Write("<script>alert('ไม่พบรหัสหนังสือนี้')</script>");


                reader.Close();


            }
            con.Close();
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


                reader.Close();
            }
            else
            {

                if (FileUpload3.PostedFile != null)
                {
                    string FileName = Path.GetFileName(FileUpload3.PostedFile.FileName);

                    //Save files to disk
                    FileUpload3.SaveAs(Server.MapPath("pic/" + FileName));


                    string sqlquery = ("INSERT INTO Book (BookID,NameBook,TypeID,NameType,Price,TotalBook,PresentBook,Count,Description,Picture) VALUES(@BookID,@NameBook,@TypeID,@NameType,@Price,@TotalBook,@PresentBook,@Count,@Description,@Picture)");
                    SqlCommand command = new SqlCommand(sqlquery, con);
                    string bookID = addidbook.Text;
                    command.Parameters.AddWithValue("BookID", bookID);
                    string Addnamebook = addnamebook.Text;
                    command.Parameters.AddWithValue("NameBook", Addnamebook);
                    string Addtypebook = addtypebook.Text;
                    command.Parameters.AddWithValue("TypeID", Addtypebook);
                    string Addpricebook = addpricebook.Text;
                    command.Parameters.AddWithValue("Price", Addpricebook);
                    string Addtotalbook = addtotalbook.Text;
                    command.Parameters.AddWithValue("TotalBook", Addtotalbook);
                    string Descriptionbook = descriptionbook.Text;
                    command.Parameters.AddWithValue("Description", Descriptionbook);
                    command.ExecuteNonQuery();


                    Response.Write("<script>alert('เพิ่มข้อมูลสำเร็จ')</script>");
                }


                con.Close();
            }
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('test')</script>");


        }
    }
}
