﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace dating_site
{
    public partial class mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { myImg.ImageUrl = Session["img"].ToString();
            Label1.Text= Session["fname"] + " " + Session["lname"];

            loaddatasuggestion();
        }

        protected void searchbar_button_Click(object sender, ImageClickEventArgs e)
        {
            loaddatasearch();
       
        }

        public void loaddatasearch()
        {
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where first_name + ' ' + last_name LIKE '%" + searchbar_text.Text.ToString() + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);
                cmd.ExecuteNonQuery();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Searchbar!')", true);
            }

            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal').style.display = 'block';", true);
        }

        public void loaddatasuggestion()
        {
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);
                cmd.ExecuteNonQuery();
              GridView2.DataSource = ds;
               GridView2.DataBind();
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Suggestion!')", true);
            }

        }


        public void sendrequest(string other_email)
        {
            string email = Session["email"].ToString(); ;

            string filtered_email = email.ToString();
            int index = filtered_email.IndexOf('@');
            filtered_email = filtered_email.Substring(0, index);
            
                System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

         
                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET sendrequests = CONCAT(sendrequests, ',"+other_email+"') where email LIKE '" + filtered_email + "%' and sendrequests Not LIKE '%" + other_email + "%'";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();


                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET requests = CONCAT(requests, ',"+email+"') where email LIKE '" + other_email + "%' and requests Not LIKE '%" + email + "%'";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Request sent')", true);

        }
       

    }
    }
     