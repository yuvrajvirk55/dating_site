using System;
using System.Collections.Generic;
using System.IO;
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
                File.Delete(Server.MapPath("~/upload/") + "auvnemk.jpg");
            }


            catch
            {
                Label1.Text="fgfgfgfgfdg";
            }
        }
    }
}