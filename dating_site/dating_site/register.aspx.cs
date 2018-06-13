using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_register_Click(object sender, EventArgs e)
        {

           

                string strname = FileUpload1.FileName.ToString();
            Response.Write("FDgdfgfdg" +  strname+"   "+ "FDGDF");
            /*    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);

                //encrpting pass

                string pass = Encrypt.EncryptString(register_password.Text, register_password.Text);

                System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT usertable (email,password,first_name,last_name,dob,sex,pic) VALUES ('" + register_email.Text + "','" +pass  + "','" + register_fname.Text + "','" + register_lname.Text + "','" + register_dob.Text + "','" + register_gender.Text + "','" + strname + "')";
                cmd.Connection = sqlConnection1;

                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();

                
           

            Session["email"] = register_email.Text;
            Session["fname"] = register_fname.Text;
            Session["lname"] = register_lname.Text;
            Response.Redirect("form.aspx");
            */
        }
     
}
    }
