<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientInfo.aspx.cs" Inherits="PatientInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .style1
        {
            height: 42px;
        }
        .style2
        {
            height: 40px;
        }
        .style3
        {
            height: 49px;
        }
    </style>

    </head>
<body style="background: #555;">
    <form id="form1" runat="server">
    <div>
    
    <!-- Modal -->
    <div class="modal-dialog" style="margin-top: 5%;  ">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #B9EC98   ;border-radius: 5px;">
                 <h4 class="modal-title">BMI Calculation</h4>
            </div>
            <div class="modal-body" style="background-color: #ffe6e6  ;">
                <table class="nav-justified">
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label1" runat="server" Text="Age"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:TextBox ID="TextBoxAge" runat="server" Height="33px" Width="477px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Years"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="72px" 
                                Width="269px">
                                <asp:ListItem Value="Female"></asp:ListItem>
                                <asp:ListItem Value="Male"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label4" runat="server" Text="Weight"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:TextBox ID="TextBoxWeight" runat="server" Height="33px" Width="485px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Kgs"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label6" runat="server" Text="Hieght"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:TextBox ID="TextBoxHeight" runat="server" Height="33px" Width="490px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Feet"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label8" runat="server" Text="Daily Activity"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="550px">
                                <asp:ListItem>No Exercise (Desk job)</asp:ListItem>
                                <asp:ListItem>Little Exercise</asp:ListItem>
                                <asp:ListItem>Daily Exercise</asp:ListItem>
                                <asp:ListItem>Physical Work</asp:ListItem>
                                <asp:ListItem>Exercise + Physical Work</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
       
                <button id="Button1"  type="button"  onServerClick="ButtonClick"  class="btn btn-primary" runat="server" data-dismiss="modal">Calculate</button>
            </div>
        </div><!-- /.modal-content -->
    </div>

    </div>
    </form>
</body>
</html>
