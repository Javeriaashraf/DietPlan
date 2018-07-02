<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientInfo2.aspx.cs" Inherits="PatientInfo2" %>

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
            height: 40px;
        }
        .style2
        {
            height: 39px;
        }
    </style>

    
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

// ]]>
    </script>
</head>
<body style="background: #555;">
    <form id="form1" runat="server">
    <div>
    
    <!-- Modal -->
    <div class="modal-dialog" style="margin-top: 5%;  ">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #B9EC98   ;border-radius: 5px;">
                 <h4 class="modal-title">BMI Results</h4>
            </div>
            <div class="modal-body" style="background-color: #ffe6e6  ;">
                <table class="nav-justified">
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label2" runat="server" Text="Your BMI :"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:Label ID="Labelbmi" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label3" runat="server" Text="Your Ideal Weight :"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:Label ID="LabelIdealWeight" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label4" runat="server" Text="Calories to be in Ideal Weight :"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:Label ID="LabelCalories" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label5" runat="server" Text="Your Weight Status :"></asp:Label>
                        </td>
                        <td class="style2">
                            <asp:Label ID="LabelStatus" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
       
               <button id="Button1"  type="button"  onServerClick="ButtonClick"  class="btn btn-primary" runat="server" data-dismiss="modal">Close</button>
             </div>
        </div><!-- /.modal-content -->
    </div>

    </div>
    </form>
</body>
</html>
