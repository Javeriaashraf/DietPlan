<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PatientProfile.aspx.cs" Inherits="PatientProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 40px;
            font-weight: 700;
        }
        .style3
        {
            height: 39px;
        }
        .style4
        {
            height: 40px;
        }
        .style7
        {
            height: 40px;
            font-weight: 700;
            width: 301px;
        }
        .style8
        {
            height: 39px;
            width: 301px;
        }
        a:link {
    color: #493267;
}



/* mouse over link */
a:hover {
    color: #373854;
}


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server" >


 <div class ="container" style="  background-color :#dbcdeb;  padding-bottom :30px;">
    <div class="container" style="width:100%" >
    <div style=" height:200px;">
    <h1 style="  font-size: 80px;background-color:#493267; color:#cccccc; width:100%; text-align:center;  padding-top:50px;">Patient's Profile</h1>
     <a id="A1" style=" margin-right:10px; float:right; color:red;" href="#" runat="server" onServerClick="Logout" > Log Out</a>
     <br/><br/><br/>
   
    </div  >
 
 
 <div >   
    <div style=" float:right; margin-right:5px ">
 <a href="BP.aspx">
  <img src="Assets/img/diet.jpg" alt="HTML tutorial" style="width:300px;height:200px;border:0;">
  
</a>
<br/>
<p ><a href="BP.aspx" target="_blank">Weekly Diet Plan According To Your Disease</a></p>
 

    <a href="fruits.aspx">
  <img src="Assets/img/fruits.jpg" alt="HTML tutorial" style="width:300px;height:200px;border:0;">
</a>
<br/>
<p ><a style=" margin:50px;" href="fruits.aspx" target="_blank">Fruits related to Your Disease</a></p>
  
  <a href="Exercise.aspx">
  <img src="Assets/img/exercise.jpg" alt="HTML tutorial" style="width:300px;height:200px;border:0;">
</a>
<br/>
<p ><a style=" margin:45px;" href="Exercise.aspx" target="_blank">Exercise related to Your Disease</a></p>
  

  <a href="vegetable.aspx">
  <img src="Assets/img/vegetables.jpg" alt="HTML tutorial" style="width:300px;height:200px;border:0;">
</a>
<br/>
<p ><a style=" margin:45px;" href="vegetable.aspx" target="_blank">Vegetables related to Your Disease</a></p>
  
    </div>
    
    
    <div style=" margin-left:10px;  width:70%;background-color:#ffe6e5;  margin-left:5px">
    <div style=" padding:30px;">
        <table class="style1"">
            <tr>
                <td class="style7">
                    <p>Your Name :</p>
                </td>
                <td class="style2">
                    <p><%= userName%></p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <p>Your ID :    </p>
                </td>
                <td class="style2">
                                       <p><%= userID%></p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <p> Email Address :</p>
                </td>
                <td class="style2">
                   <p><%= email%></p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                 <p>Gender :</p>
                </td>
                <td class="style2">
                   <p><%= gender%></p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                  <p> Your Current Weight :</p>
                </td>
                <td class="style2">
                   <p><%= weight%>    Kgs</p>
                    
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <p>Your Hieght :</p>
                </td>
                <td class="style2">
                   <p><%= hieght%>    Feets</p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <p>Your Age :</p>
                </td>
                <td class="style2">
                   <p><%= age%>    Years</p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                <p> Your BMI :</p>
                </td>
                <td class="style2">
                   <p><%= bmi%>    Kg / m2</p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <p>Joining Date :</p>
                </td>
                <td class="style2">
                 <p><%= date%></p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                 <p>Your Diseases :</p>
                </td>
                <td class="style2">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                           <p><%= diseaseid1%>    <%= diseaseid2%>    <%= diseaseid3%></p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <p>Your Ideal Weight :</p>
                </td>
                <td class="style2">
                    <p><%= idealweight%>    Kgs</p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <p> Calories to Maintain Ideal Weight:</p>
                </td>
                <td class="style2">
                    <p>      <%= calToMaintain%>    KCal / Day<p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <p>Your Current Weight Status :</p>
                </td>
                <td class="style2">
                    <p><%= status%></p>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <a style=" color:Red;"  target="_blank" runat="server" onServerClick="PasswordChange">Reset Password</a>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        <img src="Assets/img/bmichart.jpg" alt="BMI chart" style="width:500px;height:369px;">
    </div>
    </div>
   
   </div>
   </div>
</asp:Content>

