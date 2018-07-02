<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordChange.aspx.cs" Inherits="PasswordChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

        function Button1_onclick() {

        }

// ]]>
    </script>
    <style type="text/css">
        .style1
        {
            height: 40px;
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
                 <h4 class="modal-title">Password Reset</h4>
            </div>
            <div class="modal-body" >
                <table class="nav-justified">
                    <tr>
                        <td class="style1">
                            <asp:Label runat="server" Text="Current Password :"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:TextBox ID="TextBoxOldPw" runat="server" Height="40px" Width="500px" 
                                TextMode="Password"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Labelpw" runat="server" ForeColor="#990000" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label2" runat="server" Text="New Password :"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:TextBox ID="TextBoxNewPw" runat="server" Height="40px" Width="499px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label3" runat="server" Text="Confirm New Password :"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:TextBox ID="TextBoxNewPw2" runat="server" Height="40px" Width="498px" 
                                TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBoxNewPw" ControlToValidate="TextBoxNewPw2" 
                                ErrorMessage="Passwords Does not Match" ForeColor="#CC3300"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
       
               <button id="Button1"  type="button"  onServerClick="ButtonClick"  class="btn btn-primary" runat="server" data-dismiss="modal" >Change Password</button>
             </div>
        </div><!-- /.modal-content -->
    </div>

    </div>
    </form>
</body>
</html>
