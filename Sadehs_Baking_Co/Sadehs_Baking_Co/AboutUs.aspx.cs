using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sadehs_Baking_Co
{
    public partial class קצת_עלינו : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["sub2"] != null)
            {
                Session.Abandon();
                Response.Redirect("AboutUs.aspx");
            }
        }
    }
}