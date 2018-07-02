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

public partial class PatientProfile : System.Web.UI.Page
{

    public string bmi = "";
    public string idealweight = "";
    public string calToMaintain = "";
    public string status = "";
    public string userID = "";
    public string diseaseid1 = "";
    public string diseaseid2 = "";
    public string diseaseid3 = "";
    public string hieght = "";
    public string weight = "";
    public string age = "";
    public string userName = "";
    public string email = "";
    public string gender = "";
    public string date;

    string strConnString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString; //initilizes connection string
    DataSet ds;
    OleDbDataAdapter da;
    OleDbConnection con = new OleDbConnection("Provider=SQLOLEDB; Data Source=DESKTOP-0H8DPB2\\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=SSPI;");


    protected void Page_Load(object sender, EventArgs e)
    {

        string com = " SELECT * from Patient where user_id='" + HttpContext.Current.Session["user_id"].ToString() + "'";
        con = new OleDbConnection(strConnString);
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "Patient");


        DataRow dRow = ds.Tables["Patient"].Rows[0];
         userID= dRow.ItemArray.GetValue(1).ToString();
        diseaseid1 = dRow.ItemArray.GetValue(2).ToString();
        diseaseid2 = dRow.ItemArray.GetValue(3).ToString();
        diseaseid3 = dRow.ItemArray.GetValue(4).ToString();
        bmi= dRow.ItemArray.GetValue(5).ToString();
        status= dRow.ItemArray.GetValue(6).ToString();
        idealweight= dRow.ItemArray.GetValue(7).ToString();
        calToMaintain= dRow.ItemArray.GetValue(8).ToString();
        hieght= dRow.ItemArray.GetValue(9).ToString();
        weight= dRow.ItemArray.GetValue(10).ToString();
        age = dRow.ItemArray.GetValue(11).ToString();

        com = " SELECT * from login where user_id='" + HttpContext.Current.Session["user_id"].ToString() + "'";
        con = new OleDbConnection(strConnString);
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "login");


         dRow = ds.Tables["login"].Rows[0];
        userName = dRow.ItemArray.GetValue(1).ToString();
        email= dRow.ItemArray.GetValue(2).ToString();
        gender=  dRow.ItemArray.GetValue(3).ToString();
        date = dRow.ItemArray.GetValue(6).ToString();


        if (diseaseid1 == "1")
            diseaseid1 = "Blood Pressure Low";
        else if (diseaseid1 == "2")
            diseaseid1 = "Blood Pressure High";
        else if (diseaseid1 == "3")
            diseaseid1 = "Diabetes Type-1";
        else if (diseaseid1 == "4")
            diseaseid1 = "Diabetes Type-2";
        else if (diseaseid1 == "5")
            diseaseid1 = "Cholestrol";
        else if (diseaseid1 == "6")
            diseaseid1 = "";


        if (diseaseid2 == "1")
            diseaseid2 = "Blood Pressure Low";
        else if (diseaseid2 == "2")
            diseaseid2 = "Blood Pressure High";
        else if (diseaseid2 == "3")
            diseaseid2 = "Diabetes Type-1";
        else if (diseaseid2 == "4")
            diseaseid2 = "Diabetes Type-2";
        else if (diseaseid2 == "5")
            diseaseid2 = "Cholestrol";
        else if (diseaseid2 == "6")
            diseaseid2 = "";

        if (diseaseid3 == "1")
            diseaseid3 = "Blood Pressure Low";
        else if (diseaseid3 == "2")
            diseaseid3 = "Blood Pressure High";
        else if (diseaseid3 == "3")
            diseaseid3 = "Diabetes Type-1";
        else if (diseaseid3 == "4")
            diseaseid3 = "Diabetes Type-2";
        else if (diseaseid3 == "5")
            diseaseid3 = "Cholestrol";
        else if (diseaseid3 == "6")
            diseaseid3 = "";

   



    }

    protected void Logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Cookies.Clear();
        Response.Redirect("login.aspx");
    }
    protected void PasswordChange(object sender, EventArgs e)
    {
        
        Response.Redirect("PasswordChange.aspx");
    }
}