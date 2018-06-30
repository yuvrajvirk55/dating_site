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

            //queries
            string checkemail = "select email from usertable WHERE email LIKE '" + filtered_email + "%'";
            string checkpassword = "select password from usertable WHERE email LIKE '" + filtered_email + "%'";

           

            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");

            SqlCommand command_email = new SqlCommand(checkemail, connection);
            SqlCommand command_password = new SqlCommand(checkpassword, connection);

            connection.Open();

            //database values
            string db_email = (string)command_email.ExecuteScalar();
            string db_password = (string)command_password.ExecuteScalar();


            //decrypt
            try
            {
                db_password = Encrypt.DecryptString(db_password, textbox_password.Text);
            }

            catch
            {
                Label1.Text = "Invalid password";
            }


            if ((!string.IsNullOrEmpty(db_email) & !string.IsNullOrEmpty(db_password)) && (db_email.Equals(textbox_email.Text.ToString()) & db_password.Equals(textbox_password.Text.ToString())))
              {

                string checkfname = "select first_name from usertable WHERE email LIKE '" + filtered_email + "%'";
                SqlCommand command_id = new SqlCommand(checkfname, connection);
                string db_fname = command_id.ExecuteScalar().ToString();

                string checklname = "select last_name from usertable WHERE email LIKE '" + filtered_email + "%'";
                SqlCommand command_id1 = new SqlCommand(checklname, connection);
                string db_lname = command_id1.ExecuteScalar().ToString();

                string checkid = "select id from usertable WHERE email LIKE '" + filtered_email + "%'";
                SqlCommand command_id2 = new SqlCommand(checkid, connection);
                int db_id = (int)command_id2.ExecuteScalar();

                string checkpic = "select pic from usertable WHERE email LIKE '" + filtered_email + "%'";
                SqlCommand command_id3 = new SqlCommand(checkpic, connection);
                string db_pic = command_id3.ExecuteScalar().ToString();




                Session["id"] = db_id;
                Session["email"] =textbox_email.Text;
                Session["fname"] = db_fname;
                Session["lname"] = db_lname;
                Session["img"] = db_pic;

                connection.Close();

                Response.Redirect("mainpage.aspx");
            }

              else if (string.IsNullOrEmpty(db_email))
              {
                 
                Label1.Text = "User does not exists";
                connection.Close();
            }

              else if (string.IsNullOrEmpty(db_password) || !db_password.Equals(textbox_password.Text.ToString()))
              {
                  
                Label1.Text = "Invalid password";
                connection.Close();
            }

              else
              {
                 
                Label1.Text = "error";
                connection.Close();
            }
              
            
            }
        

        protected void textbox_email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}