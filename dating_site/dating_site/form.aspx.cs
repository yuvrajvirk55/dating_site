using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dating_site
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void form_form_click(object sender, EventArgs e)
        {
            Response.Write(form_gender.Text+"   "+ form_agegroup.Text+"    "+ form_nationality.Text+"     "+ form_hobbies.Text);

        }
    }
}