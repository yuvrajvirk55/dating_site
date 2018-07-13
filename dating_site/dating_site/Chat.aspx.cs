using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace dating_site
{
    public partial class Chat : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
        protected void Page_Load(object sender, EventArgs e)
        {
           //  Image5.ImageUrl = Session["img"].ToString();
             Label3.Text = Session["Name"].ToString();

            LoadChatbox();
            get_User();
            Load_Frends();
        }
        public void LoadChatbox()
        {
            DateTime date = DateTime.Now;
            string date3 = date.ToString("dd-MM-yyyy");
            //string agent = Session["Admin"].ToString();
            conn.Open();
            string str = "select * from Chatbox where Sender='" + Label1.Text + "' and Reciever='" + Label2.Text + "' or Sender='" + Label2.Text + "' and Reciever='" + Label1.Text + "' and Date='" + date3 + "' ORDER BY ID";
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            try
            {
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataList3.DataSource = ds;
                DataList3.DataBind();
            }
            catch
            {

            }
            conn.Close();
        }
        public void get_User()
        {

            // Image1.ImageUrl = Session["img"].ToString();
            Session["Name"] = "Yuvraj singh";
            Session["id"] = 1;
            Label1.Text = Session["Name"].ToString(); ;
        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string date3 = date.ToString("dd-MM-yyyy");
            string time = date.ToString("HH:mm:ss");
            conn.Open();

            string query = "insert into Chatbox values('" + Label1.Text + "','" + Label2.Text + "','" + TextBox1.Text + "','" + date3 + "','" + time + "','" + Image3.ImageUrl.ToString() + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (i >= 1)
            {
                TextBox1.Text = "";
                LoadChatbox();
            }
        }
        public void Load_Frends()
        {
            conn.Open();
           
            int my_id = (int)Session["id"];
           
            // getting number of friends
            string checkfriends = "select friends from usertable WHERE id =" + my_id + "";
            SqlCommand friends = new SqlCommand(checkfriends, conn);
            string friends_output;
            try
            {
                friends_output = (string)friends.ExecuteScalar();
            }
            catch
            {
                friends_output = "1000";
            }

           
            string str = "select DISTINCT Name,pic as Image from [usertable] where id in (" + friends_output + ")";
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            try
            {
                da.Fill(ds);

                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            catch
            {

            }
            conn.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lBtn = sender as LinkButton;
            string id = ((LinkButton)sender).CommandArgument.ToString();
            //Label1.Text = id;
            Label2.Text = lBtn.Text;

            DataListItem item = (DataListItem)lBtn.NamingContainer;
            Image NameLabel = (Image)item.FindControl("Image2");
            string url = NameLabel.ImageUrl.ToString();
            Image3.ImageUrl = url;
            LoadChatbox();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            LoadChatbox();
        }

        protected void Button1_Click2(object sender, EventArgs e)
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
            Session["Name"] = null;
            Session["img"] = null;

            connection.Close();
            Response.Redirect("home.aspx");
        }


    }
}