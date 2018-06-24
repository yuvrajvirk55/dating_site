using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["fname"] + " " + Session["lname"];
            Image1.ImageUrl= "/upload/vansh_dawar-S4CV9Sc.jpg";

        }
    }
}