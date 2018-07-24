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

            Label1.Text = Session["Name"].ToString();
           Image1.ImageUrl= Session["img"].ToString();
            Response.AppendHeader("Refresh", "2;url=mainpage.aspx");
        }
    }
}