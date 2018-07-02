using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.OleDb;
using System.Text;
using System.Globalization;
using System.Configuration;
using System.IO;

public partial class sign : System.Web.UI.Page
{

    string strConnString = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;

    SqlCommand com;
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsign_Click(object sender, EventArgs e)
    {



        SqlConnection con = new SqlConnection(strConnString);

        com = new SqlCommand();

        com.Connection = con;

        com.CommandText = "insert into login values(@Name,@Email,@Gender,@password,@status,@date_time)";

        com.Parameters.Clear();

        com.Parameters.AddWithValue("@Name", txtname.Text);

        com.Parameters.AddWithValue("@Email", txtemail.Text);

        com.Parameters.AddWithValue("@gender", RadioButtonList2.SelectedValue);

        com.Parameters.AddWithValue("@password", txtpass.Text);

        com.Parameters.AddWithValue("@status",  RadioButtonList1.SelectedValue);

        com.Parameters.AddWithValue("@date_time", DateTime.Now.ToString());
        if (con.State == ConnectionState.Closed)

            con.Open();

        com.ExecuteNonQuery();

        con.Close();

      
        
        //con.Open();
        //SqlCommand cmd = new SqlCommand("insert into LOGIN (username,email,gender,password,status,date_time) values('" +txtname.Text + "','" + txtemail.Text + "','" + RadioButtonList2 + "','" + txtpass.Text + "','"+RadioButtonList1+"','" + DateTime.Now.ToString() + "')", con);

        //cmd.ExecuteNonQuery();
        //con.Close();
        txtname.Text = null;
        txtemail.Text = null;
        RadioButtonList2.SelectedValue = null;
        txtpass.Text = null;
        RadioButtonList1.SelectedValue = null;
        RadioButtonList2.SelectedValue = null;

        Response.Redirect("login.aspx");


    }
}