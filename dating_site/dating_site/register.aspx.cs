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

        [System.Web.Services.WebMethod]
        public static string CheckEmail(string useroremail)
        {
            if (useroremail.Length >0)
            {
                string retval = "";
                SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                con.Open();
                SqlCommand cmd = new SqlCommand("select email from usertable WHERE email=@UserNameorEmail", con);
                cmd.Parameters.AddWithValue("@UserNameorEmail", useroremail);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    retval = "true";
                }
                else
                {
                    retval = "false";
                }

                return retval;
            }

            return "none";
        }


        protected void register_register_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Upload image')", true);
            }

            else if (FileUpload1.FileName.ToString().Contains(".jpeg")) 
                {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Upload Different Format')", true);
            }

            else
            {
                System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                //checking if the email already exists

                // saving image

                string filtered_email = register_email.Text.ToString();
                int index = filtered_email.IndexOf('@');
                filtered_email = filtered_email.Substring(0, index);


                string strname = FileUpload1.FileName.ToString();
                var result = strname.Substring(strname.Length - 4);

                string filtered_name = filtered_email + result; ;

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + filtered_name);

                filtered_name = "~/upload/" + filtered_name.Trim(); ;

                //encrpting pass
                string pass = Encrypt.EncryptString(register_password.Text, register_password.Text);

                
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "INSERT usertable (email,password,first_name,last_name,dob,sex,pic) VALUES ('" + register_email.Text + "','" + pass + "','" + register_fname.Text + "','" + register_lname.Text + "','" + register_dob.Text + "','" + register_gender.Text + "','" + filtered_name + "')";
                cmd.Connection = sqlConnection1;

                sqlConnection1.Open();
                cmd.ExecuteNonQuery();
                sqlConnection1.Close();

                Session["email"] = register_email.Text;
                Session["fname"] = register_fname.Text;
                Session["lname"] = register_lname.Text;
                Session["img"] = filtered_name.ToString();
                Response.Redirect("form.aspx");
            }
            
        }


    }
    }
