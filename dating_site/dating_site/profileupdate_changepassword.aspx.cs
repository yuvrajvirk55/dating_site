﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class profileupdate_changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_register_Click(object sender, EventArgs e)
        {

            try
            {
                string filtered_email = Session["email"].ToString();
                int index = filtered_email.IndexOf('@');
                filtered_email = filtered_email.Substring(0, index);

                //encrpting pass
                string pass = Encrypt.EncryptString(register_password.Text, register_password.Text);


                System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET password = '" + pass + "' where email LIKE '" + filtered_email + "%'";
                cmd.Connection = sqlConnection1;

                sqlConnection1.Open();
                cmd.ExecuteNonQuery();

                sqlConnection1.Close();
                Response.Redirect("profile.aspx");


            }

            catch
            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Password Change Failed!')", true);
            }
        }
    }
}