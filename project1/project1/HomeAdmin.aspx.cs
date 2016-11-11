using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblemail.Text = Session["Email"].ToString();
            lblpassword.Text = Session["Password"].ToString();
            lblname.Text = Session["Name"].ToString();
        }
    }
}