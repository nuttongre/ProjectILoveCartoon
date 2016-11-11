using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class addpromotion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=dpwhn0986y.database.windows.net;Initial Catalog=PreProject;Persist Security Info=True;User ID=Preproject;Password=Engineering21;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitaddpro_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqlString = "SELECT * FROM promotion WHERE PromotionID = '" + addidpro.Text + "'";
            SqlCommand comm = new SqlCommand(sqlString, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {
                //Response.Redirect("addpromotion.aspx");
                //Response.Write("This UserID have in my database...!!!");
                lblalertproid.Text = "This promotion id have in my database...!!!";
                //reader.Close();
            }
            else
            {
                con.Close(); lblalertproid.Text = "";
                if (FileUpload1.PostedFile != null)
                {
                    string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                    //Save files to disk
                    FileUpload1.SaveAs(Server.MapPath("picpro/" + FileName));

                    //Add Entry to DataBase
                    //String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                    //SqlConnection con = new SqlConnection(strConnString);
                    // string strQuery = "insert into Promotion (Filename, FilePath) values(@Filename, @FilePath)";
                    // SqlCommand cmd = new SqlCommand(strQuery);
                    string sqlquery = "INSERT INTO Promotion(PromotionID,NamePromotion,Picpromotion) VALUES (@PromotionID,@NamePromotion,@Picpromotion)";
                    SqlCommand cmd = new SqlCommand(sqlquery, con);
                    //cmd.Parameters.AddWithValue("@Filename", FileName);
                    cmd.Parameters.AddWithValue("@Picpromotion", "picpro/" + FileName);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    try
                    {
                        con.Open();
                        //cmd.ExecuteNonQuery();
                        string PromotionID = addidpro.Text;
                        cmd.Parameters.AddWithValue("PromotionID", PromotionID);

                        string NamePromotion = addnamepro.Text;
                        cmd.Parameters.AddWithValue("NamePromotion", NamePromotion);



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

        protected void addnamepro_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submindeletepro_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqlquery = "DELETE FROM  Promotion WHERE PromotionID ='" + deletepro.Text + "' ";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}