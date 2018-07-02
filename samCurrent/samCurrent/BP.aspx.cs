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


public partial class BP : System.Web.UI.Page
{
    public int maxRows = 0;
    public int? disease_id1;
    public int? disease_id2;
    public int? disease_id3;
    public string[] Breakfast = new string[30]; //tring to store fruit names that come fro query execution
    public string[] Lunch = new string[30];
    public string[] Dinner = new string[30];
    string strConnString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString; //initilizes connection string
    DataSet ds;
    OleDbDataAdapter da;
    OleDbConnection con;
    int?[] Disease_list = new int?[3];


    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["user_name"] != null)
        {

            string com = " SELECT disease_id1, disease_id2, disease_id3 from Patient where user_id=" + Session["user_id"] + "";
            con = new OleDbConnection(strConnString);
            ds = new DataSet();
            da = new OleDbDataAdapter(com, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            da.Fill(ds, "Patient");


            DataRow dRow = ds.Tables["Patient"].Rows[0];
            Disease_list[0] = Convert.ToInt32(dRow.ItemArray.GetValue(0));
            Disease_list[1] = Convert.ToInt32(dRow.ItemArray.GetValue(1));
            Disease_list[2] = Convert.ToInt32(dRow.ItemArray.GetValue(2));

            if (Disease_list[1] == 6 && Disease_list[2] == 6)
            {
                disease_id1 = Disease_list[0];
                getRecord_id1();
            }
            else if (Disease_list[1] != 6 && Disease_list[2] == 6)
            {
                disease_id1 = Disease_list[0];
                disease_id2 = Disease_list[1];
                getRecord_id2();
            }
            else
            {
                disease_id1 = Disease_list[0];
                disease_id2 = Disease_list[1];
                disease_id3 = Disease_list[2];

                getRecord_id3();

            }


        }
        else
        {
            string com = "SELECT diet_items FROM diet_plan where diet_time='Breakfast'";
            ds = new DataSet();
            da = new OleDbDataAdapter(com, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            da.Fill(ds, "diet_plan");

            maxRows = ds.Tables["diet_plan"].Rows.Count;
            for (int i = 0; i < maxRows; i++)
            {
                DataRow dRow = ds.Tables["diet_plan"].Rows[i];
                Breakfast[i] = dRow.ItemArray.GetValue(0).ToString();

            }


            com = "SELECT diet_items FROM diet_plan where diet_time='Lunch'";
            ds = new DataSet();
            da = new OleDbDataAdapter(com, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            da.Fill(ds, "diet_plan");

            maxRows = ds.Tables["diet_plan"].Rows.Count;
            for (int i = 0; i < maxRows; i++)
            {
                DataRow dRow = ds.Tables["diet_plan"].Rows[i];
                Lunch[i] = dRow.ItemArray.GetValue(0).ToString();

            }



            com = "SELECT diet_items FROM diet_plan where diet_time='Dinner'";
            ds = new DataSet();
            da = new OleDbDataAdapter(com, con);
            if (con.State == ConnectionState.Closed)
                con.Open();
            da.Fill(ds, "diet_plan");

            maxRows = ds.Tables["diet_plan"].Rows.Count;
            for (int i = 0; i < maxRows; i++)
            {
                DataRow dRow = ds.Tables["diet_plan"].Rows[i];
                Dinner[i] = dRow.ItemArray.GetValue(0).ToString();

            }

        }

        //if (disease_id == 1 || disease_id == 2 || disease_id == 3 || disease_id == 4 || disease_id == 5)
        //    //getRecord_id1();
        //else
        //    getRecord_id2();

        //no need of Executenonquery
        con.Close();


    }

    protected void getRecord_id1()
    {
        // select distinct(f.fruit_name),CAST(f.Image as varbinary(5000)) as Picture from Patient p join fruit f on p.disease_id = f.disease_id where p.user_id=" + Session["user_id"] +""

        string com = "SELECT diet_items FROM diet_plan WHERE disease_id='" + disease_id1 + "' AND diet_time='Breakfast' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Breakfast[i] = dRow.ItemArray.GetValue(0).ToString();
        }


        com = "SELECT diet_items FROM diet_plan WHERE disease_id='" + disease_id1 + "' AND diet_time='Lunch' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Lunch[i] = dRow.ItemArray.GetValue(0).ToString();
        }



        com = "SELECT diet_items FROM diet_plan WHERE disease_id='" + disease_id1 + "' AND diet_time='Dinner' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Dinner[i] = dRow.ItemArray.GetValue(0).ToString();
        }
    }


    protected void getRecord_id2()
    {

        string com = "SELECT diet_items FROM diet_plan WHERE disease_id in('" + disease_id1 + "','" + disease_id2 + "') AND diet_time='Breakfast' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Breakfast[i] = dRow.ItemArray.GetValue(0).ToString();
        }


        com = "SELECT diet_items FROM diet_plan WHERE disease_id in('" + disease_id1 + "','" + disease_id2 + "') AND diet_time='Lunch' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Lunch[i] = dRow.ItemArray.GetValue(0).ToString();
        }



        com = "SELECT diet_items FROM diet_plan WHERE disease_id in('" + disease_id1 + "','" + disease_id2 + "') AND diet_time='Dinner' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Dinner[i] = dRow.ItemArray.GetValue(0).ToString();
        }
    }



    protected void getRecord_id3()
    {

        string com = "SELECT diet_items FROM diet_plan WHERE disease_id in('" + disease_id1 + "','" + disease_id2 + "','" + disease_id3 + "') AND diet_time='Breakfast' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Breakfast[i] = dRow.ItemArray.GetValue(0).ToString();
        }


        com = "SELECT diet_items FROM diet_plan WHERE disease_id in('" + disease_id1 + "','" + disease_id2 + "','" + disease_id3 + "') AND diet_time='Lunch' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Lunch[i] = dRow.ItemArray.GetValue(0).ToString();
        }



        com = "SELECT diet_items FROM diet_plan WHERE disease_id in('" + disease_id1 + "','" + disease_id2 + "','" + disease_id3 + "') AND diet_time='Dinner' ";
        ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "diet_plan");

        maxRows = ds.Tables["diet_plan"].Rows.Count;
        for (int i = 0; i < maxRows; i++)
        {
            DataRow dRow = ds.Tables["diet_plan"].Rows[i];
            Dinner[i] = dRow.ItemArray.GetValue(0).ToString();
        }
    }
}









    



