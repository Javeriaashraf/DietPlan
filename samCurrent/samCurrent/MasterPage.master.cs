using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string name;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["user_name"] != null)

            name = "View " + HttpContext.Current.Session["user_name"].ToString() + "'s Profile";
        else
            name = "Login/Sign Up";


    }
}
