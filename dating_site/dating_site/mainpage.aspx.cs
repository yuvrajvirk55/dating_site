using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace dating_site
{
    public partial class mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void searchbar_button_Click(object sender, ImageClickEventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8");
            con.Open();

            SqlCommand cmd;

            cmd = new SqlCommand("SELECT userinterest.email as email, first_name + ' ' + last_name AS name, int_sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email where first_name + ' ' + last_name LIKE '%" + searchbar_text.Text.ToString() + "%'", con);
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
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Grid!')", true);
            }
            
              ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal').style.display = 'block';", true);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string Selected = "";
            foreach (GridViewRow gr in GridView1.Rows)
            {
                CheckBox cb = (CheckBox)gr.FindControl("chkCheck");
                Label lblName = (Label)gr.FindControl("lblStudentName");
                // You can get other value same way                

                if (cb != null && cb.Checked)
                {
                    string StdID = GridView1.DataKeys[gr.DataItemIndex].Values["email"].ToString();
                    Selected += "Student ID : " + StdID + "<br/>";
                }
            }

            lblResult.Text = Selected;
            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal').style.display = 'block';", true);
        }

        void ContactsGridView_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            // If multiple buttons are used in a GridView control, use the
            // CommandName property to determine which button was clicked.
            if (e.CommandName == "Add")
            {
                // Convert the row index stored in the CommandArgument
                // property to an Integer.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button clicked 
                // by the user from the Rows collection.
                GridViewRow row = GridView1.Rows[index];

                // Create a new ListItem object for the contact in the row.     
                ListItem item = new ListItem();
                item.Text = Server.HtmlDecode(row.Cells[2].Text) + " " +
                  Server.HtmlDecode(row.Cells[3].Text);

                // If the contact is not already in the ListBox, add the ListItem 
                // object to the Items collection of the ListBox control. 
               // if (!GridView1.Items.Contains(item))
                {
              //      GridView1.Items.Add(item);
                }
            }
        }
    }
    }
     