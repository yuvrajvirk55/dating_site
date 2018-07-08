using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
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
            button_friends.Attributes.Add("onclick", "return false;");
        
            Session["id"] =1;
            Session["email"] = "auvnemk@gmail.com";
            Session["fname"] = "Yuvraj";
            Session["lname"] = "Singh";
            
           //  myImg.ImageUrl = Session["img"].ToString();
            Label1.Text = Session["fname"] + " " + Session["lname"];
            loadall();

            status.InnerHtml = "";
            for(int i=0;i<10;i++)
            status.InnerHtml += "<div style='background-color:#E5E5E5; padding:15px;'><br /><h2>Friend List</h2><br /><div style='overflow-x:hidden;width:600px'>sdfndsnfdlfkdsfsd</div></div><br /><br />";


        }

        protected void upload_status(object sender, ImageClickEventArgs e)
        {
            int my_id = (int)Session["id"];

            System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

           

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "update usertable set status='"+status_text.Text+"' where id="+my_id+"";
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();
            cmd.ExecuteNonQuery();
            sqlConnection1.Close();

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Status Uploaded')", true);
        }




        public void loadall()
        {
            loaddatasuggestion();
            friends_dropdownlist();
            loaddatafriends();
            loaddatarequests();
        }


        protected void searchbar_button_Click(object sender, ImageClickEventArgs e)
        {
            loaddatasearch();
       
        }

        public void loaddatasearch()
        {
            int my_id = (int)Session["id"];
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            // getting list of friends
            string checksrequests = "select sendrequests from usertable WHERE id ="+my_id+"";
            SqlCommand srequests = new SqlCommand(checksrequests, con);
            string srequests_output;
            try
            {
                srequests_output = (string)srequests.ExecuteScalar();
            }
            catch
            {
                srequests_output = "1000";
            }

            string checkrequests = "select requests from usertable WHERE id =" + my_id + "";
            SqlCommand requests = new SqlCommand(checkrequests, con);
            string requests_output;
            try
            {
                requests_output = (string)requests.ExecuteScalar();
            }
            catch
            {
                requests_output = "1000";
            }

            string checkfriends = "select friends from usertable WHERE id =" + my_id + "";
            SqlCommand friends = new SqlCommand(checkfriends, con);
            string friends_output;
            try
            {
                friends_output = (string)friends.ExecuteScalar();
            }
            catch
            {
                friends_output = "1000";
            }

           string total_friends = srequests_output + "," + requests_output + "," + friends_output;

            total_friends += "," + my_id;
           // string path = @"d:\MyTests.txt";
            //File.WriteAllText(path,total_friends);   
            // filling gridview
            SqlCommand cmd;
            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where first_name + ' ' + last_name LIKE '%" + searchbar_text.Text.ToString() + "%' and usertable.id not in (" + total_friends + ")", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
           // try
            {
                da.Fill(ds);
                cmd.ExecuteNonQuery();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
           // catch
            {
            //    GridView1.DataSource = null;
            //    GridView1.DataBind();
             //   Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Searchbar!')", true);
                
            }
            con.Close();

            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal').style.display = 'block';", true);
        }

        public void loaddatasuggestion()
        {
            int my_id = (int)Session["id"];
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            // getting list of friends
            string checksrequests = "select sendrequests from usertable WHERE id =" + my_id + "";
            SqlCommand srequests = new SqlCommand(checksrequests, con);
            string srequests_output;
           try
            {
                srequests_output = (string)srequests.ExecuteScalar();
            }
            catch
            {
               srequests_output = "1000";
            }

            string checkrequests = "select requests from usertable WHERE id =" + my_id + "";
            SqlCommand requests = new SqlCommand(checkrequests, con);
            string requests_output;
            try
            {
                requests_output = (string)requests.ExecuteScalar();
            }
            catch
            {
                requests_output = "1000";
            }

            string checkfriends = "select friends from usertable WHERE id =" + my_id + "";
            SqlCommand friends = new SqlCommand(checkfriends, con);
            string friends_output;
            try
            {
                friends_output = (string)friends.ExecuteScalar();
            }
           catch
            {
                friends_output = "1000";
            }

            string total_friends = srequests_output + "," + requests_output + "," + friends_output;
            total_friends = total_friends.ToString();
            total_friends += "," + my_id;

            // filling gridview
            SqlCommand cmd;
            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where usertable.id not in (" + total_friends + ")", con);
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
                GridView2.DataSource = null;
                GridView2.DataBind();
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Suggestion!')", true);
            }

            con.Close();
        }

        public void loaddatafriends()
        {
            int my_id = (int)Session["id"];
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            // getting number of friends
            string checkfriends = "select friends from usertable WHERE id =" + my_id + "";
            SqlCommand friends = new SqlCommand(checkfriends, con);
            string friends_output;
            try
            {
                friends_output = (string)friends.ExecuteScalar();
            }
            catch
            {
                friends_output = "1000";
            }

            // filling gridview
            SqlCommand cmd;
            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where usertable.id in (" + friends_output + ")", con);
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
               GridView3.DataSource = null;
                GridView3.DataBind();
               // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Friends!')", true);
            }
            con.Close();

        }

        public void loaddatarequests()
        {
            int my_id = (int)Session["id"];

            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            // getting number of received requests
            string checkrequests = "select requests from usertable WHERE id ="+my_id+"";
            SqlCommand requests = new SqlCommand(checkrequests, con);
            string requests_output;
            try
            {
                requests_output = (string)requests.ExecuteScalar();
            }
            catch
            {
                requests_output = "1000";
            }

            // filling gridview
            SqlCommand cmd;
            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where usertable.id in (" + requests_output + ")", con);
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
               GridView4.DataSource = null;
                GridView4.DataBind();
             //   Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Requests!')", true);
            }
            con.Close();

        }



        protected void friends_dropdownlist()
        {

            int my_id = (int)Session["id"];

            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            SqlCommand cmd = new SqlCommand();
            connection.Open();


            // premium

            string pre = "select premium from usertable WHERE id =" + my_id + "";
            SqlCommand p = new SqlCommand(pre, connection);
            string output;
            try
            {
               output = (string)p.ExecuteScalar();
            }
            catch
            {
               output = "Trial";
            }

             Buttonpremium.Text = output;
            
            // getting id of friends
            string checkfriends = "select friends from usertable WHERE id ="+my_id+"";
            SqlCommand friends = new SqlCommand(checkfriends, connection);
            string friends_output;
            try
            {
                friends_output = (string)friends.ExecuteScalar();
            }
            catch
            {
                friends_output = "1000";
            }


            // filling list
            cmd.Connection = connection;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT first_name + ' ' + last_name AS name,pic from usertable where id in (" + friends_output + ")";

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            try
            { 
                da.Fill(dt);
            }

            catch
            {
               // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Freinds!')", true);
            }
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

            connection.Close();

            friends_dropdown.InnerHtml = "<input type='text' placeholder='Search..' id='myInput' onkeyup='filterFunction()'>";
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

            loadall();

        }


        public void addfriend(int other_id)
        {
            int my_id = (int)Session["id"];

            
                        System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();


                        sqlConnection1.Open();




            // removing from my requests
            string checkrequests = "select requests from usertable WHERE id =" + my_id + "";
            SqlCommand requests = new SqlCommand(checkrequests, sqlConnection1);
            string requests_output;
           
            requests_output = (string)requests.ExecuteScalar();

            string a = requests_output;
            a = a.Replace(other_id.ToString(),"");

            // filtering system
            a = a.Replace(",,", ",");

            if (!string.IsNullOrEmpty(a))
            {
                if (a[0].ToString() == ",")
                {
                    a = a.Remove(0, 1);
                }

                if (a[a.Length - 1] == ',')
                {
                    Console.WriteLine(a);
                    a = a.Remove(a.Length - 1, 1);
                }
            }

            if (a.Length < 1)
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET requests = null where id = " + my_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();

            }
            else
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET requests = '" + a + "' where id = " + my_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }


            // removving  from other users send requests
            string checksrequests = "select sendrequests from usertable WHERE id =" + other_id+"";
            SqlCommand srequests = new SqlCommand(checksrequests, sqlConnection1);
            string srequests_output;
          
            srequests_output = (string)srequests.ExecuteScalar();


            a = srequests_output;
            a = a.Replace(my_id.ToString(),"");
            // filtering system
            a = a.Replace(",,", ",");
            if (!string.IsNullOrEmpty(a))
            {
                if (a[0] == ',')
                {
                    a = a.Remove(0, 1);
                }

                if (a[a.Length - 1] == ',')
                {
                    Console.WriteLine(a);
                    a = a.Remove(a.Length - 1, 1);
                }
            }

            if (a.Length < 1)
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET sendrequests = null where id = " + other_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }
            else
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET sendrequests = '" + a + "' where id = " + other_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }


            //adding friends


            // adding to my friends
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET friends = " + other_id + " where id = " + my_id + " and friends is null";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET friends = CONCAT(friends, '," + other_id + "') where id = " + my_id + " and friends Not LIKE '%" + other_id + "%'";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();

            //adding to other users friends

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET friends = " + my_id + " where id = " + other_id + " and friends is null";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();


            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE usertable SET friends = CONCAT(friends, '," + my_id + "') where id = " + other_id + " and friends Not LIKE '%" + my_id + "%'";
            cmd.Connection = sqlConnection1;
            cmd.ExecuteNonQuery();


            sqlConnection1.Close();

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Added')", true);

            loadall();
        }



        public void removefriend(int other_id)
        {
            int my_id = (int)Session["id"];

           
                        System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                        sqlConnection1.Open();


            // removving  from me account
            string checkfriends = "select friends from usertable WHERE id =" + my_id + "";
            SqlCommand friends = new SqlCommand(checkfriends, sqlConnection1);
            string friends_output;

            friends_output = (string)friends.ExecuteScalar();


           string a = friends_output;
            a = a.Replace(other_id.ToString(), "");
            // filtering system
            a = a.Replace(",,", ",");
            if (!string.IsNullOrEmpty(a))
            {
                if (a[0] == ',')
                {
                    a = a.Remove(0, 1);
                }

                if (a[a.Length - 1] == ',')
                {
                    Console.WriteLine(a);
                    a = a.Remove(a.Length - 1, 1);
                }
            }

            if (a.Length < 1)
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET friends = null where id = " + my_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }
            else
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET friends = '" + a + "' where id = " + my_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }

            // removving  from otheraccount
           checkfriends = "select friends from usertable WHERE id =" + other_id + "";

            friends = new SqlCommand(checkfriends, sqlConnection1);
       
            friends_output = (string)friends.ExecuteScalar();


           a = friends_output;
            a = a.Replace(my_id.ToString(), "");
            // filtering system
            a = a.Replace(",,", ",");
            if (!string.IsNullOrEmpty(a))
            {
                if (a[0] == ',')
                {
                    a = a.Remove(0, 1);
                }

                if (a[a.Length - 1] == ',')
                {
                    Console.WriteLine(a);
                    a = a.Remove(a.Length - 1, 1);
                }
            }

            if (a.Length < 1)
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET friends = null where id = " + other_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }
            else
            {
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "UPDATE usertable SET friends = '" + a + "' where id = " + other_id + "";
                cmd.Connection = sqlConnection1;
                cmd.ExecuteNonQuery();
            }

            sqlConnection1.Close();     

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('removed')", true);

            loadall();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            connection.Open();

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "update usertable set login='out' where id = " + Session["id"] + "";
            cmd.Connection = connection;
            cmd.ExecuteNonQuery();

            Session["id"] = null;
            Session["email"] = null;
            Session["fname"] = null;
            Session["lname"] = null;
            Session["img"] = null;

            connection.Close();
            Response.Redirect("home.aspx");
        }


        protected void Buttonpremium_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal1').style.display = 'block';", true);
        }


        protected void Buttonpremium_pay(object sender, EventArgs e)
        {
            if(Buttonpremium.Text=="Trial")
            {
                textcard.InnerHtml = "<center><h1 style='color: green'>Thanks for Your Suscription</h1></center><br/><center><h3>Your pack is now valid for 1 Year</h3></center><br/> ";

                SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                connection.Open();

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update usertable set premium ='Premium' where id = " + Session["id"] + "";
                cmd.Connection = connection;
                cmd.ExecuteNonQuery();
                connection.Close();
            }

            else

            textcard.InnerHtml = "<center><h1 style='color: green'>You have already suscribed to premium.</h1></center><br/><center><h3>Enjoy</h3></center><br/> ";


            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal1').style.display = 'block';", true);

            friends_dropdownlist();
        }

        }
}
     