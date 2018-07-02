using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class forgotpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-0H8DPB2\\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

        string username = "";
        string password = "";

        SqlCommand cmd = new SqlCommand("select user_name,password from login where email=@email", con);
        cmd.Parameters.AddWithValue("email", Textbox1.Text);
        con.Open();
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                username = sdr["user_name"].ToString();
                password = sdr["password"].ToString();
               
            }

        }
        con.Close();

        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("saminaa413@gmail.com");
            msg.To.Add(Textbox1.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "saminaa413@gmail.com"; //Your Email ID  
            ntwd.Password = "fbpass95@12"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
          }
        Textbox1.Text = "";
       
   
    
    }
}