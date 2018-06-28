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

            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email, first_name + ' ' + last_name AS name, int_sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cmd.ExecuteNonQuery();
            productList.DataSource = ds;
            

        }  
    }
}