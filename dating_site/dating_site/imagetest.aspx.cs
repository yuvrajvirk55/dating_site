using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace dating_site
{
    public partial class imagetest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection sqlConnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["userdataConnectionString"].ConnectionString);
            sqlConnection1.Open();

            SqlCommand cmd = new SqlCommand("select pic from usertable",sqlConnection1);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {

                while (dr.Read())
                {
                    byte[] imagedata = (byte[])dr["pic"];
                    string img = Convert.ToBase64String(imagedata, 0, imagedata.Length);
                    Image1.ImageUrl = "data:image/jpg;base64," + "images/background.jpg";
                } 
            }

            else
                Response.Write("failed");

            sqlConnection1.Close();


        }
    }
}