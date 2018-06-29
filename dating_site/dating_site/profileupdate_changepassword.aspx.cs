using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class profileupdate_changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_register_Click(object sender, EventArgs e)
        {

            try
            {
                string filtered_email = Session["email"].ToString();
                int index = filtered_email.IndexOf('@');
                filtered_email = filtered_email.Substring(0, index);

            }



            catch
            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Password Change Failed!')", true);
            }
        }
    }
}