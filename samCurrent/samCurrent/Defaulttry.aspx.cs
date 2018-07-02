using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Defaulttry : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;

    SqlCommand com;
        public string disease1 ;
        public string disease2 ;
        public string disease3 ;
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.Items[0].Text = "";
        RadioButtonList1.Items[1].Text = "";
        RadioButtonList2.Items[0].Text = "";
        RadioButtonList2.Items[1].Text = "";
    }
    protected void ButtonClick(object sender, EventArgs e)
    {
        int flag=0;

        if (RadioButtonList1.SelectedIndex != -1)
        {
            flag++;
            disease1 = RadioButtonList1.SelectedValue;
        }
        if(RadioButtonList2.SelectedIndex != -1 )
        { if (flag==0)
            {
                disease1 = RadioButtonList2.SelectedValue;
            }
            if(flag==1)
            {
                disease2 = RadioButtonList2.SelectedValue;
            }

            flag++;

        }
        if (RadioButton5.Checked==true)
        {
            if (flag == 0)
                disease1 = "5";
            if (flag == 1)
                disease2 = "5";
            if (flag == 2)
                disease3 = "5";

            
        }

        if (flag == 0)
            Response.Write("Please Select atleast 1 disease");
        if (flag == 1)
        {
            disease2 = "6";
            disease3 = "6";
        }
        if (flag == 2)
        {
            disease3 = "6";
        }

        SqlConnection con = new SqlConnection(strConnString);

        com = new SqlCommand();

        com.Connection = con;
        

        com.CommandText = "insert into [Patient] (user_id,disease_id1,disease_id2,disease_id3) values('"+HttpContext.Current.Session["user_id"].ToString()+"', '"+disease1+"', '"+disease2+"','"+disease3+"' )";

        if (con.State == ConnectionState.Closed)

            con.Open();

        com.ExecuteNonQuery();

        con.Close();
        Response.Redirect("PatientInfo.aspx");
    }
   
}