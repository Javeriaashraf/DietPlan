<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Defaulttry.aspx.cs" Inherits="Defaulttry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .style3
        {
            height: 59px;
            width: 130px;
        }
        .style5
        {
            height: 59px;
            width: 35px;
        }
        .style6
        {
            height: 80px;
            width: 130px;
        }
        .style7
        {
            height: 80px;
            width: 35px;
        }
    </style>

</head>
<body style="background: #555;">
    <form id="form1" runat="server">
    <div>
    
    <!-- Modal -->
    <div class="modal-dialog" style="margin-top: 10%;">
        <div class="modal-content">
            <div class="modal-header">
                 <h4 class="modal-title">Select Disease</h4>
            </div>
            <div class="modal-body">
                <table class="nav-justified">
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label1" runat="server" Text="Blood Pressure Low"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Blood Pressure High"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="80px" 
                                >
                                <asp:ListItem Value="1">[1]</asp:ListItem>
                                <asp:ListItem Value="2">[2]</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label3" runat="server" Text="Diabetes Type 1"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Diabetes Type 2"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="80px">
                                <asp:ListItem Value="3">[3]</asp:ListItem>
                                <asp:ListItem Value="4">[4]</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label5" runat="server" Text="Cholestrol"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:RadioButton ID="RadioButton5" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
       
                <button  type="button"  onServerClick="ButtonClick"  class="btn btn-primary" runat="server" data-dismiss="modal">Save and Next</button>
            </div>
        </div><!-- /.modal-content -->
    </div>

    </div>
    </form>
</body>
</html>
