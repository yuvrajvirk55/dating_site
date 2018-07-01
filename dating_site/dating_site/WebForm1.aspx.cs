using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();


            string checksrequests = "select sendrequests from usertable WHERE id =1";
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

            string checkrequests = "select requests from usertable WHERE id =1";
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

            string checkfriends = "select friends from usertable WHERE id =1";
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

            Response.Write(total_friends);


            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email,usertable.id as id, first_name + ' ' + last_name AS name, sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where usertable.id in (1000)", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
          
                 da.Fill(ds);
                 cmd.ExecuteNonQuery();
                 GridView1.DataSource = ds;
                 GridView1.DataBind();

             

           

        }
    }
}