﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void form_form_click(object sender, EventArgs e)
        {

           System.Data.SqlClient.SqlConnection sqlConnection2 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT userinterest (email,int_sex,int_nationality,int_agegroup,in_hobbies) VALUES ('" + Session["email"] + "','" + form_gender.Text + "','" + form_nationality.Text + "','" + form_agegroup.Text + "','" + form_hobbies.Text + "')";
            cmd.Connection = sqlConnection2;

            sqlConnection2.Open();
            cmd.ExecuteNonQuery();
            sqlConnection2.Close();

            Response.Redirect("welcome.aspx");
        }
    }
}