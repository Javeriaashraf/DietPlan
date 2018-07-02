<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>DIET PLAN</title>
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
                             
                            
                            <%-- <li class="dropdown" ><a href="#"class="dropdown-toggle" data-toggle="dropdown"
                        role="button" aria-haspopup="true" aria-expanded="false"  >Diet Plan<span class="caret"></span></a>
                        <ul class=" dropdown-menu"  data-dropdown-in="fadeinup" data-dropdown-out="fadeoutdown">
                           <li><a href="#">Diabetes</a></li>
                            <li><a href="#">BP</a></li>
                            <li><a href="#">Cholesterol</a></li>
                            </ul></li>--%>
                           
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

                     
                    <li>
                        <!-- add search form -->
                     <div class="navbar-form" >
                       <asp:Button ID="Button2"   CssClass="btn btn-default nav-btn"  runat="server" 
                             Text="Singout" onclick="Button2_Click"  />
                        </div>
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

    <div>
        <asp:Label ID="lblsuccess" runat="server" CssClass="text-success" ></asp:Label>
    </div>
    <footer id="fh5co-footer" class="padding100">
			
			<div class="fh5co-footer-content">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-12 col-md-pull-3 animated wow fadeInLeft" data-wow-delay="0.2s">
							<div class="fh5co-footer-logo"><a href="index.aspx">DIET PLAN</a></div>
							<p class="fh5co-copyright" > <small>&copy; 2016. All Rights Reserved. <br>	by <a href="http://aboostrap.com/" target="_blank">aspxtemplates.com</a> Images: <a href="http://aspxtemplates.com/" target="_blank">Pexels</a></small></
							<p class="fh5co-social-icons">
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-youtube"></i></a>
							</p>
                            
						</div>
                        <div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInLeft" data-wow-delay="0.4s">
							<h3 class="fh5co-lead">About</h3>
							<ul>
								<li><a href="#">Tour</a></li>
								<li><a href="#">Company</a></li>
								<li><a href="#">Jobs</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">New Features</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInLeft" data-wow-delay="0.6s">
							<h3 class="fh5co-lead">Support</h3>
							<ul>
								<li><a href="#">Help Center</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">More Apps</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInLeft" data-wow-delay="0.8s">
							<h3 class="fh5co-lead">More Links</h3>
							<ul>
								<li><a href="#">Feedback</a></li>
								<li><a href="#">Frequently Ask Questions</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">More Apps</a></li>
							</ul>
						</div>

						<%--<div class="col-md-3 col-sm-12 col-md-pull-3 animated wow fadeInLeft" data-wow-delay="0.8s">
							<div class="fh5co-footer-logo"><a href="index.aspx">DIET PLAN</a></div>
							<p class="fh5co-copyright" > <small>&copy; 2016. All Rights Reserved. <br>	by <a href="http://aboostrap.com/" target="_blank">aspxtemplates.com</a> Images: <a href="http://aspxtemplates.com/" target="_blank">Pexels</a></small></
							<p class="fh5co-social-icons">
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-youtube"></i></a>
							</p>
                            
						</div>--%>
						
					</div>
				</div>
			</div>
		</footer>

          <!-- jQuery -->
    <script src="Assets/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="Assets/js/bootstrap.min.js"></script>
    <script src="Assets/js/wow.min.js" type="text/javascript"></script>
    <script src="Assets/js/tutorial.js"></script>
    <script src="Assets/css/owl/owl.carousel.js" type="text/javascript"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="Assets/js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="Assets/js/jquery.smartmenus.bootstrap.js"></script>
   
    </form>
</body>
</html>
