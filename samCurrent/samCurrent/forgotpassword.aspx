<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.style2
{height:51px;}

  .style4
  {
      width:131px;
      height:79px;
      }

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="4" cellspacing="4" width="450px" height="200px">
<tr>

<td colspan="3" class ="style2">
<h3>Forgot Password</h3>
</td>
</tr>
<tr>
<td class="style4">
<asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
<br />
</td>

<td>
<asp:TextBox ID="Textbox1" runat="server" Width ="252px"></asp:TextBox>
</td>
</tr>

<tr>
<td align="center" colspan="3">

<asp:Button ID="Button1" runat="server" Text="Send Mail" Height="29px" Width="92px" 
        onclick="Button1_Click" />
</td>

</tr>

</table>
</asp:Content>

