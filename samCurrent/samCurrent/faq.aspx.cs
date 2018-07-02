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
public partial class _Default : System.Web.UI.Page
{
    public string[] Q_General = new string[5]; //to store data that come fro query execution
    public string[] A_General = new string[5];
    public string[] Q_nutrition = new string[5];
    public string[] A_nutrition = new string[5];
    public string[] Q_Weight = new string[5];
    public string[] A_Weight = new string[5];
    public string[] Q_Diet = new string[5];
    public string[] A_Diet = new string[5];
    public string[] Q_Management = new string[5];
    public string[] A_Management = new string[5];
    string strConnString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString; //initilizes connection string
    DataSet ds;
    OleDbDataAdapter da;
    OleDbConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection(strConnString);





        string com = "SELECT TOP 5 question, answer FROM FAQ WHERE category='General'";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "FAQ");


        for (int i = 0; i <= 4; i++)
        {
            DataRow dRow = ds.Tables["FAQ"].Rows[i];
            Q_General[i] = dRow.ItemArray.GetValue(0).ToString();
            A_General[i] = dRow.ItemArray.GetValue(1).ToString();
        }


        com = "SELECT TOP 5 question, answer FROM FAQ WHERE category='weight_loss'";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "FAQ");


        for (int i = 0; i <= 4; i++)
        {
            DataRow dRow = ds.Tables["FAQ"].Rows[i];
            Q_Weight[i] = dRow.ItemArray.GetValue(0).ToString();
            A_Weight[i] = dRow.ItemArray.GetValue(1).ToString();
        }


        com = "SELECT TOP 5 question, answer FROM FAQ WHERE category='dietary'";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "FAQ");


        for (int i = 0; i <= 4; i++)
        {
            DataRow dRow = ds.Tables["FAQ"].Rows[i];
            Q_Diet[i] = dRow.ItemArray.GetValue(0).ToString();
            A_Diet[i] = dRow.ItemArray.GetValue(1).ToString();
        }




        com = "SELECT TOP 5 question, answer FROM FAQ WHERE category='management'";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "FAQ");


        for (int i = 0; i <= 4; i++)
        {
            DataRow dRow = ds.Tables["FAQ"].Rows[i];
            Q_Management[i] = dRow.ItemArray.GetValue(0).ToString();
            A_Management[i] = dRow.ItemArray.GetValue(1).ToString();
        }


        com = "SELECT TOP 5 question, answer FROM FAQ WHERE category='nutrition'";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "FAQ");


        for (int i = 0; i <= 4; i++)
        {
            DataRow dRow = ds.Tables["FAQ"].Rows[i];
            Q_nutrition[i] = dRow.ItemArray.GetValue(0).ToString();
            A_nutrition[i] = dRow.ItemArray.GetValue(1).ToString();
        }




        //no need of Executenonquery
        con.Close();



    }
}