using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class resetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetpassword_button_click(object sender, EventArgs e)
        {

            string filtered_email = resetpassword_email.Text.ToString();
            int index = filtered_email.IndexOf('@');
            filtered_email = filtered_email.Substring(0, index);

            //queries
            string checknation = "select int_nationality from userinterest WHERE email LIKE '" + filtered_email + "%'";
           

            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");

            SqlCommand command_nation = new SqlCommand(checknation, connection);
         

            connection.Open();

            //database values
            string db_nation = (string)command_nation.ExecuteScalar();

            if (!(db_nation == null) && (db_nation.Equals(resetpassword_nationality.Text)))
            {
                Session["reset_email"] = resetpassword_email.Text;
                Response.Redirect("resetpassword2.aspx");
            }


            else
            {
                Label1.Text = "Incorrect answer ! ! !  ";

            }
        }
    }
}