using System;
using System.Collections.Generic;
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
            try
            {

                SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");


                SqlCommand comm = new SqlCommand("SELECT first_name + ' ' + last_name AS name from usertable", connection);
                connection.Open();

                SqlDataReader reader = comm.ExecuteReader();
                List<string> str = new List<string>();
                int i = 0;
                while (reader.Read())
                {
                    str.Add(reader.GetValue(0).ToString());
                }
                reader.Close();
                connection.Close();
                foreach (string o in str)
                {
                    myDropdown.InnerHtml += "<a href='friend'>"+o+"</a><br/>";
                        
                }
             
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                
            }

        }
    }
}