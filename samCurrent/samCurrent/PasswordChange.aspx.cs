using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;


public partial class PasswordChange : System.Web.UI.Page
{
    string strConString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString; //initilizes connection string
    DataSet ds;
    OleDbDataAdapter da;
    OleDbConnection con = new OleDbConnection("Provider=SQLOLEDB; Data Source=DESKTOP-0H8DPB2\\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=SSPI");

    public string userID = "";
    public string pw = "";
    public string newpw = "";
    public string confirm = "";
    


    protected void Page_Load(object sender, EventArgs e)
    {


        Labelpw.Text = "";

       

    }
    protected void ButtonClick(object sender, EventArgs e)
    {
        string com = " SELECT * from login where user_id='" + HttpContext.Current.Session["user_id"].ToString() + "'";
        con = new OleDbConnection(strConString);
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "login");


        DataRow dRow = ds.Tables["login"].Rows[0];
        pw = dRow.ItemArray.GetValue(4).ToString();


        if (pw != TextBoxOldPw.Text.ToString())
        {

            Labelpw.Text = "Incorrect Password";
            TextBoxOldPw.Text = "";
            TextBoxNewPw.Text = "";
            TextBoxNewPw2.Text = "";

        }
        else
            PasswordMatch();



        
    }
    protected void PasswordMatch()
    {


        string strConnString = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;

        SqlCommand comm;

        SqlConnection conn = new SqlConnection(strConnString);

        comm = new SqlCommand();

        comm.Connection = conn;

        comm.CommandText = "update login set password='" + TextBoxNewPw.Text.ToString() + "'  WHERE user_id='" + HttpContext.Current.Session["user_id"].ToString() + "'";

        if (conn.State == ConnectionState.Closed)

            conn.Open();

        comm.ExecuteNonQuery();

        conn.Close();

        Response.Redirect("PatientProfile.aspx");
     
        
    }

}