﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           searchbar_button.Attributes.Add("onclick", "popWin();return false;");
        }

        protected void searchbar_button_Click(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}