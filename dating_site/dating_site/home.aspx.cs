using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace dating_site
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

               SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);
               conn.Open();

               string checkemail= "select email from usertable where email= "+ textbox_email.Text;

     
        }

        protected void textbox_email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}