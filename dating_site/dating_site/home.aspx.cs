﻿using System;
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
            string checkpassword = "select password from usertable WHERE password = '" + textbox_password.Text + "' ";

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);

            SqlCommand command_email = new SqlCommand(checkemail, connection);
            SqlCommand command_password = new SqlCommand(checkpassword, connection);

            connection.Open();

            //database values
            string db_email = (string)command_email.ExecuteScalar();
            string db_password = (string)command_password.ExecuteScalar();

            

              if (db_email.Equals(textbox_email.Text.ToString()) & db_password.Equals(textbox_password.Text.ToString()))
              {
                  Response.Write("successfully logged in");
              }

              else if (string.IsNullOrEmpty(db_email))
              {
                  Response.Write("User does not exists");
              }

              else if (string.IsNullOrEmpty(db_password))
              {
                  Response.Write("Invalid password");
              }

              else
              {
                  Response.Write("error");
              }
              
            connection.Close();
            }
        

        protected void textbox_email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}