using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PatientInfo : System.Web.UI.Page
{
    public double bmi = 0;
    public double idealweight = 0;
    public double calToMaintain = 0;
    public string status = "";
    public double temp = 0;
    public double hieght = 0;
    string strConnString = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;

    SqlCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void ButtonClick(object sender, EventArgs e)
    {
        hieght = Convert.ToDouble(TextBoxHeight.Text) * 0.3048;
        bmi = Convert.ToDouble(TextBoxWeight.Text) / (hieght * hieght);
        idealweight = (0.5 * bmi + 11.5) * hieght * hieght;
        calToMaintain = 66.67 + (13.75 * Convert.ToDouble(TextBoxWeight.Text)) + (5 * hieght*100) - (6.76 * Convert.ToDouble(TextBoxAge.Text));
        if (bmi <= 15)
            status = "Very Severely Underweight";
        else if (bmi > 15 && bmi <= 16)
            status = "Severely Underweight";
        else if (bmi > 16 && bmi <= 18.5)
            status = "Underweight";
        else if (bmi > 18.5 && bmi <= 25)
            status = "Normal (healthy weight)";
        else if (bmi > 25 && bmi <= 30)
            status = "Overweight";
        else if (bmi > 30 && bmi <= 35)
            status = "Moderately obese";
        else if (bmi > 35 && bmi <= 40)
            status = "Severely obese";
        else if (bmi > 40)
            status = "Very severely obese";
        bmi = Math.Round((bmi), 2);
        calToMaintain = Math.Round((calToMaintain), 2);
        idealweight = Math.Round((idealweight), 2);
        SqlConnection con = new SqlConnection(strConnString);

        com = new SqlCommand();

        com.Connection = con;


        com.CommandText = "update Patient set BMI='" + bmi + "' ,status='" + status + "', idealweight='" + idealweight + "', cal_to_maintain='" + calToMaintain + "', Weight='" + TextBoxWeight.Text.ToString() + "' , Age='" + TextBoxAge.Text.ToString() + "' , Hieght='" + TextBoxHeight.Text.ToString()  + "'  WHERE user_id='" + HttpContext.Current.Session["user_id"].ToString() + "'";

        if (con.State == ConnectionState.Closed)

            con.Open();

        com.ExecuteNonQuery();

        con.Close();
      
   
        Response.Redirect("PatientInfo2.aspx");
    }
}