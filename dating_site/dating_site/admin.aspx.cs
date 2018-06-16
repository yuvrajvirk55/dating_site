using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string checkuser = "select Count(*) from usertable";

            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");

            SqlCommand command_email = new SqlCommand(checkuser, connection);

            connection.Open();

            //database values
           int db_user = (int)command_email.ExecuteScalar();

            connection.Close();

           // Label1.Text = db_user.ToString();

            
        }
    }
}