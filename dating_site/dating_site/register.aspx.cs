﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
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
            /*
            System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT usertable (email,password,first_name,last_name,dob,sex) VALUES ('" + register_email.Text + "','" + register_password.Text + "','" + register_fname.Text + "','" + register_lname.Text + "','" + register_dob.Text + "','" + register_gender.Text +"')";
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();*/

            if (FileUpload1.HasFile)
            {

                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read();


                System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT usertable (email,password,first_name,last_name,dob,sex) VALUES ('" + register_email.Text + "','" + register_password.Text + "','" + register_fname.Text + "','" + register_lname.Text + "','" + register_dob.Text + "','" + register_gender.Text +  "')";
                cmd.Connection = sqlConnection1;

                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                sqlConnection1.Close(); 

            }
            else
                Response.Write("photo not inserted");

        }
     
}
    }
