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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




            string checkuser = "select Count(*) from usertable";

            SqlConnection connection = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");

            SqlCommand command_email = new SqlCommand(checkuser, connection);

            connection.Open();

            //database values
            int db_user = (int)command_email.ExecuteScalar();

            connection.Close();

            percent.Text = db_user.ToString();
            Label1.Text = "Yuvraj Singh";
            Image1.ImageUrl = "~/images/login.jpg";



        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('All the data from database will be removed')", true);


            System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "delete from usertable";
            cmd.Connection = sqlConnection1;


            sqlConnection1.Open();
            cmd.ExecuteNonQuery();

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "delete from userinterest";
            cmd.Connection = sqlConnection1;

            cmd.ExecuteNonQuery();
            sqlConnection1.Close();



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String connectionString = "Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8";
            string selectCommand = "select * from usertable";
           
           SqlDataAdapter dataAdapter = new SqlDataAdapter(selectCommand, connectionString);

           
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dataAdapter);

            // Populate a new data table and bind it to the BindingSource.
            DataTable table = new DataTable();
            table.Locale = System.Globalization.CultureInfo.InvariantCulture;
            dataAdapter.Fill(table);
            Response.Write(table);
            GridView1.DataSource = table;
        }
        
          }
         }
                
            
