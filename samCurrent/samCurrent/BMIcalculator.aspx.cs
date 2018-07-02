using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BMIcalculator : System.Web.UI.Page
{
    public double cm = 0;
    public double m = 0;
    public double kg = 0;
    public double temp = 0;
    public double bmifinal = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected void TextBoxHieght_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ButtonBMI_Click(object sender, EventArgs e)
    {
        cm = double.Parse(TextBoxHieght.Text);
        kg = double.Parse(TextBoxWeight.Text);
        m = cm / 100;
        temp = m * m;
        bmifinal = kg / temp;

        LabelBMI.Text = bmifinal.ToString();
    }
}