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

public partial class PatientInfo2 : System.Web.UI.Page
{
   
    public double bmi = 0;
    public double idealweight = 0;
    public double calToMaintain = 0;
    public string status = "";

    string strConnString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString; //initilizes connection string
    DataSet ds;
    OleDbDataAdapter da;
    OleDbConnection con = new OleDbConnection("Provider=SQLOLEDB; Data Source=DESKTOP-0H8DPB2\\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=SSPI");

    protected void Page_Load(object sender, EventArgs e)
    {

        string com = " SELECT BMI, status, idealweight, cal_to_maintain from Patient where user_id='" + HttpContext.Current.Session["user_id"].ToString() + "'";
        con = new OleDbConnection(strConnString);
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "Patient");


        DataRow dRow = ds.Tables["Patient"].Rows[0];
        bmi = Convert.ToDouble(dRow.ItemArray.GetValue(0));
        status = dRow.ItemArray.GetValue(1).ToString();
        idealweight = Convert.ToDouble(dRow.ItemArray.GetValue(2));
        calToMaintain = Convert.ToDouble(dRow.ItemArray.GetValue(3));

        Labelbmi.Text = bmi.ToString();
        LabelCalories.Text = calToMaintain.ToString();
        LabelIdealWeight.Text = idealweight.ToString();
        LabelStatus.Text = status.ToString();

   


    }
    protected void ButtonClick(object sender, EventArgs e)
    { Response.Redirect("index.aspx"); }
}