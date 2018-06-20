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
    public partial class query : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            SqlCommand cmd;

            if (Session["radio_query"] == "usertable")
            {

                cmd = new SqlCommand("select " + Session["radio_query"] + " from usertable", con);
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
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data !')", true);
                }
            }
            else
            {
                cmd = new SqlCommand("select " + Session["text_query"] + " from userinterest", con);
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
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data !')", true);
                }
            }
        }
        
    }
}