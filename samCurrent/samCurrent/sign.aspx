<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign.aspx.cs" Inherits="sign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SIGN UP</title>
     <style type="text/css">
        
           .center{text-align:center}
           .center_page{width:1041px;
                        height:74px;
                        position:absolute;
                        top:0;
                        bottom:724px;
                        left:0;
                        right:-12px;
                        margin:auto
         }
        
   
    </style>

    <!-- Bootstrap Core CSS -->
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="Assets/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <link href="Assets/css/owl/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="Assets/css/owl/owl.theme.css" rel="stylesheet" type="text/css" />
    <link href="Assets/css/owl/owl.transitions.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="Assets/css/1-col-portfolio.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,700' rel='stylesheet'
        type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css" />
    <!-- Required plugin - Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">
    <link href="Assets/fonts/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   
            

</head>
<body>
    <form id="form1" runat="server">
     
                   
  
     <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><i class="fa fa-cutlery"></i>DIET PLAN</a>
            </div>
            <div class="navbar-collapse collapse">
                <!-- Left nav -->
                <ul class="nav navbar-nav navbar-left">
                   
                    <li><a id="A1" href="index.aspx" runat="server">Home</a></li>
                   
                   
                   <li class="dropdown"><a id="A2" href="services.aspx" class="dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false" runat="server">Services<span class="caret"></span></a>
                        
                        <ul  class="dropdown-menu" data-dropdown-in="fadeInUp" data-dropdown-out="fadeOutDown">
                            <li><a href="#">Weekly Diet Plan</a></li>
                            <li><a href="#">Monthly Diet Plan</a></li>
                             
                            
                             <li class="dropdown" ><a href="#"class="dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false"  >Diet Plan<span class="caret"></span></a>
                        <ul class=" dropdown-menu"  data-dropdown-in="fadeinup" data-dropdown-out="fadeoutdown">
                           <li><a href="#">Diabetes</a></li>
                            <li><a href="#">BP</a></li>
                            <li><a href="#">Cholesterol</a></li>
                            </ul></li>
                           
                            <li><a href="#">Reviews</a></li>
                              
                            </ul>
                    </li>
                   
                  
                    
                     <li class="dropdown"><a id="A3" href="portfolio.aspx" class="dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false" runat="server">Live Well <span class="caret"></span></a>
                        <ul class="dropdown-menu" data-dropdown-in="fadeInUp" data-dropdown-out="fadeOutDown">
                            <li><a href="#">Stress</a></li>
                            <li><a href="#">Weight loss</a></li>
                             <li><a href="#">Stop Smoking</a></li>
                            <li><a href="#">Tiredness</a></li>
                              
                            </ul>
                    </li>
                  

                    
                   
                     <li ><a id="A4" href="blog.aspx" runat="server">Blog</a></li>
                    
                    <li><a id="A5" href="contact.aspx" runat="server">Contact</a></li>
                     <li><a id="A6" href="login.aspx" runat="server">Login/Sign up</a></li>
                    <li>
                        <!-- add search form -->
                     
                        <%--<div class="navbar-form" role="search">
                        <div class="input-group">
                            <asp:TextBox ID="txtsearch" runat="server" placeholder="Search this site" class="form-control"></asp:TextBox>
                            <span class="input-group-btn" >
                                <asp:LinkButton runat="server" ID="lbsearch" ToolTip="Search" CssClass="btn btn-default"
                                    Text='<i class="glyphicon glyphicon-search"></i>' />
                            </span>
                        </div>
                       
                        </div>--%>
                    </li>
                </ul>
            </div>
        </div>
    </div>


   <div class="item active" >             
 <img src="Assets/img/signup_img.jpg"  width="1500"  alt="Chania" class="img-responsive"/>
            </div>

             <div class="contact padding50">
        <div class="container">
            <div class="row">
                <div class="col-md-8
           <div class="col-xs-11">
                <asp:Label ID="Label1" runat="server" Text="NAME:" ></asp:Label>
                <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="user name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>

   <div class="col-xs-11">
   <asp:Label ID="Label2" runat="server" Text="PASSWORD:" ></asp:Label>
                <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
   </div>       
         
         
          
         <div class="col-xs-11">
   <asp:Label ID="Label3" runat="server" Text="CONFIRM PASSWORD:" ></asp:Label>
                <asp:TextBox ID="txtcon" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcon" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                
                 <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="txtcon" ErrorMessage="Password doesn't match" 
                    ForeColor="#FF3300" ControlToCompare="txtpass"></asp:CompareValidator>
                    </div>

          
               <div class="col-xs-11">
   <asp:Label ID="Label4" runat="server" Text="EMAIL:" ></asp:Label>
                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="Red">*</asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please Enter correct format" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email is In_valid</asp:RegularExpressionValidator>
   </div>        
         
         
<div class="col-xs-11">
            
            <asp:Label ID="Label5" runat="server" Text="GENDER:" ></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="405px" 
                    Height="19px">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:RadioButtonList>
                   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server"  ControlToValidate="RadioButtonList2" ForeColor="Red" ErrorMessage="Please Check one"></asp:RequiredFieldValidator>
</div>
      
      
                     
      
      <div class="col-xs-11">
      
                       <asp:Label ID="Label6" runat="server" Text="STATUS:" ></asp:Label>
                       <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="400px" 
      
                    Height="55px">
                    <asp:ListItem>DOCTOR</asp:ListItem>
                    <asp:ListItem>PATIENT</asp:ListItem>
                </asp:RadioButtonList>
            
           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Atleast Check One" 
                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-xs-11">
                        <asp:Button ID="btnsign" runat="server" BackColor="#669900" class="btn btn-success" Text="SIGN UP" onclick="btnsign_Click" />
                    
                    </div>
            
</div>
                </div>
                <div class="col-md-4">
                </div>
               
    </form>
                
</body>
</html>
