﻿using System;
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
                //DataList2.DataSource = ds;
                //DataList2.DataBind();
                DataList3.DataSource = ds;
                DataList3.DataBind();
            }
            catch
            {

            }
            conn.Close();
            //ScriptManager.RegisterStartupScript(this.Page, typeof(Panel), "PanelChatContent", ";ScrollToBottom();", true);
        }
        public void get_User()
        {

            Image1.ImageUrl = Session["img"].ToString();
            Label1.Text = Session["Name"].ToString(); ;
        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string date3 = date.ToString("dd-MM-yyyy");
            string time = date.ToString("HH:mm:ss");
            conn.Open();

            string FilePath = @"D:\MyTests.txt";
            using (var file = new StreamWriter(File.Create(FilePath)))
            {
                file.Write("1" + Label1.Text + "', 2'" + Label2.Text + "', 3'" + TextBox1.Text + "',4 '" + date3 + "',5 '" + time + "', 6'" + Image3.ImageUrl.ToString() + "");
            }
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
            string str = "select DISTINCT Name,pic as Image from [usertable] where first_name !='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            //DataList2.DataSource = ds;
            //DataList2.DataBind();
            DataList1.DataSource = ds;
            DataList1.DataBind();
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
    }
}