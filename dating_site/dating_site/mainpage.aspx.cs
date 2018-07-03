using System;
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
        {
            myImg.ImageUrl = Session["img"].ToString();
           Label1.Text= Session["fname"] + " " + Session["lname"];

            loaddatasuggestion();
            friends_dropdownlist();
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

            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where first_name + ' ' + last_name LIKE '%" + searchbar_text.Text.ToString() + "%'", con);
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

            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);
                cmd.ExecuteNonQuery();
              GridView2.DataSource = ds;
               GridView2.DataBind();
                GridView3.DataSource = ds;
                GridView3.DataBind();
                GridView4.DataSource = ds;
                GridView4.DataBind();
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Suggestion!')", true);
            }

        }

        public void loaddatafriends()
        {
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);
                cmd.ExecuteNonQuery();
                GridView3.DataSource = ds;
                GridView3.DataBind();
        
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Friends!')", true);
            }

        }

        public void loaddatarequests()
        {
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);
                cmd.ExecuteNonQuery();
                GridView4.DataSource = ds;
                GridView4.DataBind();
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Requests!')", true);
            }

        }



        protected void friends_dropdownlist()
        {

            
            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = connection;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT first_name + ' ' + last_name AS name,pic from usertable";
            connection.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            
          
            int j = 0;
            foreach (DataRow row in dt.Rows)
            {
                j++;
            }

            string[] pic = new string[j];
            string[] names = new string[j];

            int cont = 0;
            foreach (DataRow row in dt.Rows)
            {
                names[cont] = row.Field<string>(0);
                pic[cont] = row.Field<string>(1);
                cont++;
            }

            friends_dropdown.InnerHtml = "";

            for (int i = 0; i < j; i++)
            {
               friends_dropdown.InnerHtml += "<a  class='tablinks' onclick="+"\""+"openCity(event, 'Paris')"+"\""+" ><img src='" + pic[i].Replace("~", "") + "' width='42' height='42' />   " + names[i] + "</a>";

            }


        }





        // sending, receiving and removind friends functions

        public void sendrequest(int other_id)
        {
            int my_id = (int)Session["id"];


            System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();


            sqlConnection1.Open();

            // adding to my send requests
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET sendrequests = " + other_id + " where id = " + my_id + " and sendrequests is null";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET sendrequests = CONCAT(sendrequests, '," + other_id + "') where id = " + my_id + " and sendrequests Not LIKE '%" + other_id + "%'";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();

            //adding to other users received requests

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET requests = " + my_id + " where id = " + other_id + " and requests is null";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();


            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET requests = CONCAT(requests, '," + my_id + "') where id = " + other_id + " and requests Not LIKE '%" + my_id + "%'";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();


            sqlConnection1.Close();

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Request sent')", true);

        }


    }
    }
     