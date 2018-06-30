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
            
                string[] pic = new string[2];
                string[] names = new string[2];
                int cont = 0;


                SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = connection;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT first_name + ' ' + last_name AS name,pic from usertable";
                connection.Open();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow row in dt.Rows)
                {
                    names[cont] = row.Field<string>(0);
                    pic[cont] = row.Field<string>(1);
                    cont++;
                }
          

            for (int i = 0; i < names.Length; i++)
                {
                   // myDropdown.InnerHtml += "<a href='friend'><img src='"+pic[i].Replace("~","")+ "' width='42' height='42' />   " + names[i] + "</a>";

                }

       
            }
    }
}