﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class profileupdate_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
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

            else if (!FileUpload1.FileName.ToString().Contains(".png") & !FileUpload1.FileName.ToString().Contains(".jpg") & !FileUpload1.FileName.ToString().Contains(".gif"))
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Upload an image. We accept .jpg, .png, .gif formats')", true);
            }

            else
            {

                try
                {
                    int my_id = (int)Session["id"];

                    string filtered_email = Session["email"].ToString();
                    int index = filtered_email.IndexOf('@');
                    filtered_email = filtered_email.Substring(0, index);



                    string strname = FileUpload1.FileName.ToString();
                    var result = strname.Substring(strname.Length - 4);

                    string filtered_name = filtered_email + result; ;

                    File.Delete(Server.MapPath("~/upload/") + filtered_name);

                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + filtered_name);

                    filtered_name = "~/upload/" + filtered_name.Trim(); ;




                    System.Data.SqlClient.SqlConnection sqlConnection1 = new System.Data.SqlClient.SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "UPDATE usertable SET first_name = '" + register_fname.Text + "', last_name = '" + register_lname.Text + "', dob = '" + register_dob.Text + "', sex = '" + register_gender.Text + "', pic = '" + filtered_name + "' where id = " + my_id + "";
                    cmd.Connection = sqlConnection1;

                    sqlConnection1.Open();
                    cmd.ExecuteNonQuery();

                    sqlConnection1.Close();


                    Session["Name"] = register_fname.Text + " " + register_lname.Text;
                    Session["img"] = filtered_name.ToString();
                    Response.Redirect("profile.aspx");
                }

                catch
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Info Change Failed!')", true);
                }
            }
        }
    }
}