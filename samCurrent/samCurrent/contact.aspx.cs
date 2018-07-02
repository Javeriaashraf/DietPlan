using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-0H8DPB2\\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into contact (name,email,subject,message) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')", con);
        
            cmd.ExecuteNonQuery();
            con.Close();
      
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('We'll contact you soon.')", true);
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
    }
}