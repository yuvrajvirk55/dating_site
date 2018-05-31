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

            string filtered_email = textbox_email.Text.ToString();
            int index = filtered_email.IndexOf('@');
            filtered_email = filtered_email.Substring(0, index);


            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);

            string checkemail= "select email from usertable WHERE email LIKE %uvnemk% ";

            SqlCommand command = new SqlCommand(checkemail, connection);
            connection.Open();

            string tDate = (string)command.ExecuteScalar();

            Response.Write(tDate);
            connection.Close();



        }

        protected void textbox_email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}