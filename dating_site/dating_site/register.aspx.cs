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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_register_Click(object sender, EventArgs e)
        {
            var a=0;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);
            conn.Open();
            string checkemail = "insert into usertable (email, password, first_name, last_name, sex, dob) values(register_email.Text, register_password.Text, register_fname.Text, register_lname.Text, register_gender.Text, register_dob.Text) ";
            SqlCommand com = new SqlCommand(checkemail, conn);
      

            conn.Close();

            if (a == 0)
                Response.Write("Data not inserted");
            else

                Response.Write("Data inserted");
        }
     
}
    }
