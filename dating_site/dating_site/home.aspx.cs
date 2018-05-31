using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

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
            string checkemail= "select count(*) from usertable where email='"+ textbox_email.Text+ "'";
            SqlCommand com = new SqlCommand(checkemail, conn);

            if (checkemail.ToString() != textbox_email.ToString())
                {
                 Response.Write("user doesnot exist");
               
            }

            else

            {
                string  checkpassword = "select password from usertable where email='" + checkemail + "'";
                SqlCommand com1 = new SqlCommand(checkpassword, conn);
                if (checkpassword.Equals(textbox_password))
                {
                    Response.Write("login successful");
                  
                }
                else
                {
                    Response.Write("incorrect password");
                   
                }

            }
            conn.Close();
        }

        protected void textbox_email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}