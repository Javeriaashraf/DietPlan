using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["user_name"] != null)
        { 
        lblsuccess.Text="welcome  "+Session["user_name"].ToString()+"";
      
        }

        else
        {
            Response.Redirect("login.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["user_name"] = null;
        Response.Redirect("index.aspx");
    }
}