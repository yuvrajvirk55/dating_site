﻿using System;
using System.Collections.Generic;
using System.Data;
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

            percent.Text = db_user.ToString();
                    
            //Image1.ImageUrl = Session["img"].ToString();
         //   Label1.Text = Session["fname"] + " " + Session["lname"];
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
             if (!string.IsNullOrEmpty(erase_email.Text) && !string.IsNullOrEmpty(erase_password.Text))
             {
                 //queries
                 string checkemail = "select email from usertable WHERE email LIKE 'admin%'";
                 string checkpassword = "select password from usertable WHERE email LIKE 'admin%'";

                 SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                 SqlCommand command_email = new SqlCommand(checkemail, connection);
                 SqlCommand command_password = new SqlCommand(checkpassword, connection);
                 connection.Open();

                 //database values
                 string db_email = (string)command_email.ExecuteScalar();
                 string db_password = (string)command_password.ExecuteScalar();

                 try
                 {
                     db_password = Encrypt.DecryptString(db_password, erase_password.Text);
                 }
                 catch
                 {
                     Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Incorrect credentials !')", true);
                 }

                 if ((!string.IsNullOrEmpty(db_email) & !string.IsNullOrEmpty(db_password)) && (db_email.Equals(erase_email.Text.ToString()) & db_password.Equals(erase_password.Text.ToString())))
                 {

                     System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                     System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                     cmd.CommandType = System.Data.CommandType.Text;
                     cmd.CommandText = "delete from usertable";
                     cmd.Connection = sqlConnection1;


                     sqlConnection1.Open();
                     cmd.ExecuteNonQuery();

                     cmd.CommandType = System.Data.CommandType.Text;
                     cmd.CommandText = "delete from userinterest";
                     cmd.Connection = sqlConnection1;

                     cmd.ExecuteNonQuery();
                     sqlConnection1.Close();

                 }

                 else
                     Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Incorrect credentials !')", true);


             }
             else
                 Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Enter credientials !')", true);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["radio_query"] = RadioButtonList1.Text.ToString();
            Session["text_query"] = TextBox1.Text.ToString();
            Response.Redirect("query.aspx");
        }

    }
  }
                
            
