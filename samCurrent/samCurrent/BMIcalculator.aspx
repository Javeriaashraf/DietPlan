<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPateint.master" AutoEventWireup="true" CodeFile="BMIcalculator.aspx.cs" Inherits="BMIcalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 96px;
        }
        .style4
        {
            height: 236px;
        }
        .style6
        {
            height: 50px;
            text-align: right;
            width: 369px;
        }
        .style8
        {
            height: 236px;
            width: 330px;
        }
        .style12
        {
            height: 96px;
            width: 330px;
        }
        .style13
        {
            height: 236px;
            width: 369px;
        }
        .style15
        {
            height: 96px;
            width: 369px;
        }
        .style19
        {
            height: 98px;
            width: 369px;
        }
        .style20
        {
            height: 98px;
            width: 330px;
        }
        .style21
        {
            height: 98px;
        }
        .style25
        {
            height: 50px;
            width: 330px;
        }
        .style26
        {
            height: 50px;
        }
        .style27
        {
            height: 51px;
            text-align: right;
            width: 369px;
        }
        .style28
        {
            height: 51px;
            width: 330px;
        }
        .style29
        {
            height: 51px;
        }
        .style30
        {
            height: 98px;
            width: 45px;
        }
        .style31
        {
            height: 236px;
            width: 45px;
        }
        .style32
        {
            height: 51px;
            text-align: right;
            width: 45px;
        }
        .style33
        {
            height: 50px;
            text-align: right;
            width: 45px;
        }
        .style35
        {
            height: 96px;
            width: 45px;
        }
        .style36
        {
            height: 55px;
            width: 369px;
        }
        .style37
        {
            height: 55px;
            width: 45px;
        }
        .style38
        {
            height: 55px;
            width: 330px;
        }
        .style39
        {
            height: 55px;
        }
         
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         
           
    <table >
        <tr>
            <%--<td class="style19">
            </td>
            <td class="style30">
                </td>
            <td class="style20">
            </td>
            <td class="style21">
            </td>--%>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style8">
                <%--<h1 style="color: rgb(16, 110, 13); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 1.4em; font-style: normal; font-weight: bold; margin: 8px 0px 12px; padding: 0px; border: 0px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    Calculate</h1>--%>
                    <h2 style="color: rgb(16, 110, 13); top: 0px; left: 0px; height: 138px;"  
                    class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span><strong>C</strong>alculate <strong>Y</strong>our <strong>B</strong>ody <strong>M</strong>ass <strong>I</strong>ndex</span ></h2>
                <p style="font-family: Verdana, Arial, sans-serif; font-size: 1.05em; line-height: 17px; color: rgb(0, 0, 0); margin: 0px; padding: 0px 0px 12px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    Body mass index (BMI) is a measure of body fat based on height and weight that 
                    applies to adult men and women.</p>
                <ul style="margin: 0px; padding: 0px 0px 0px 50px; border: 0px; list-style: none; font-size: 1.05em; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <li style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 17px; color: rgb(0, 0, 0); margin: 0px 0px 12px; padding: 5px 0px; list-style-type: disc; word-wrap: break-word;">
                        Enter your weight and height .</li>
                    <li style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 17px; color: rgb(0, 0, 0); margin: 0px 0px 12px; padding: 5px 0px; list-style-type: disc; word-wrap: break-word;">
                        Select &quot;Compute BMI&quot; and your BMI will appear below.</li>
                </ul>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style27">
            <h5>
                Your Hieght:<br />
                (in centimeters)</td>
            <td class="style32">
                &nbsp;</td>
                </h5>
            <td class="style28">

                <asp:TextBox ID="TextBoxHieght" runat="server" Height="17px" Width="150px" 
                    ontextchanged="TextBoxHieght_TextChanged"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxHieght" ErrorMessage="Hieght is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBoxHieght" ErrorMessage="Range must be 120-220" 
                    MaximumValue="220" MinimumValue="120" Type="Double" ForeColor="Red"></asp:RangeValidator>
            </td>
            <td class="style29">
                <p style="font-family: Verdana, Arial, sans-serif; font-size: 1.05em; line-height: 17px; color: rgb(0, 0, 0); margin: 0px; padding: 0px 0px 12px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <b style="margin: 0px; padding: 0px; border: 0px;">BMI Categories:<span>&nbsp;</span></b><br />
                    </p>
            </td>
        </tr>
        <tr>
        
            <td class="style6">
            <h5>
                Your Weight:<br />
                (in Kgs)</td>
        
            <td class="style33">
                &nbsp;</td>
                </h5>
            <td class="style25">
                <asp:TextBox ID="TextBoxWeight" runat="server" Height="17px" Width="150px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxWeight" ErrorMessage="Wight is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBoxWeight" ErrorMessage="Text field is empty" 
                    MaximumValue="200" MinimumValue="20" Type="Double" ForeColor="Red"></asp:RangeValidator>
            </td>
            <td class="style26">
                    Underweight = &lt;18.5<br />
                    Normal weight = 18.5–24.9<span>&nbsp;</span><br />
                    Overweight = 25–29.9<span>&nbsp;</span><br />
                    Obesity = BMI of 30 or greater</td>
        </tr>
        <tr>
            <td class="style36">
            </td>
            <td class="style37">
            </td>
            <td class="style38">
                            <asp:Button ID="ButtonBMI" runat="server" Text="Compute BMI" Height="22px" 
                    Width="103px" onclick="ButtonBMI_Click" />
            </td>
            <td class="style39">
            </td>
        </tr>
        <tr>
            <td class="style32">
               <h5> Your BMI:</h5></td>
            <td class="style35">
            </td>
            <td class="style12">
                <asp:Label ID="LabelBMI" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style1">
           
            </td>
        </tr>
    </table>
    
</asp:Content>

