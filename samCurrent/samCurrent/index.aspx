<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  
    <%--<div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target='#carousel-example-generic' data-slide-to='0' class='active'>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/1.jpg"
                    Width="100px" Height="50px" /></li>
         
            <li data-target='#carousel-example-generic' data-slide-to='1'>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/2.jpg" Width="100px" Height="50px" /></li>
            </li>
            <li data-target='#carousel-example-generic' data-slide-to='2'>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/3.jpg" Width="100px" Height="50px" /></li>
            <li data-target='#carousel-example-generic' data-slide-to='3'>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/img/4.jpg" Width="100px" Height="50px" /></li>
                
                </li>
        </ol>
       --%>
       
     


       <div id="myCarousel" class="carousel slide carousel-fit" class="carousel slide carousel-fade" data-ride="carousel" >
        
  <!-- Indicators -->
      <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active" > <asp:Image ID="Image1" runat="server"  ImageUrl="~/Assets/img/best_diet1.jpg" Width="100px" Height="50px" /></li>
            <li data-target="#myCarousel" data-slide-to="1"><asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/img/white.jpg" Width="100px" Height="50px" /></li>
            <li data-target="#myCarousel" data-slide-to="2"> <asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/img/3.jpg" Width="100px" Height="50px" /></li>
          
            <li data-target="#myCarousel" data-slide-to="3">  <asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/img/glass.jpg" Width="100px" Height="50px" />  </li>
      </ol>
        <!-- Wrapper for slides -->
     
      <div class="carousel-inner" role="listbox" >
            <div class="item active" >
            

          
             <img src="Assets/img/best_diet1.jpg"  width="1500"  alt="Chania" class="img-responsive"/>
            </div>

            <div class="item" >
                <img src="Assets/img/white.jpg" width="1500" height="100" alt="Chania" class="img-responsive"/>
            </div>

            <div class="item">
                <img src="Assets/img/3.jpg" width="1500" height="100" alt="Flower"/>
            </div>

            <div class="item">
          
            <%--<div class="main-text hide-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Let your <b class="yellow">smile</b> change the <b class="yellow">world</b><br />
                            <span class="span">Not the world change your smile.</span></h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-clear btn-sm btn-min-block">Login</asp:HyperLink>
                          <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-clear btn-sm btn-min-block"> Register</asp:HyperLink>
                           </div>
                    </div>
                </div>
          --%>
             <img src="Assets/img/glass.jpg" width="1500" height="100"  alt="Flower"/>
             </div>
      
      </div>

    
     <%--  <div class="carousel-inner">
            <div class="item active one">
                <!-- <img src="#" alt="" /> -->
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Let your <b class="yellow">smile</b> change the <b class="yellow">world</b><br />
                            <span class="span">Not the world change your smile.</span></h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-clear btn-sm btn-min-block">Login</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-clear btn-sm btn-min-block">Registration</asp:HyperLink>
                           </div>
                    </div>
                </div>
            </div>
            <div class="item two">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            A <b class="yellow">Goal</b> without <b class="yellow">a plan</b><br />
                            <span class="span">is just a wish</span></h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-clear btn-sm btn-min-block">learn More</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-clear btn-sm btn-min-block                           ">Download</asp:HyperLink>
                            </div>
                    </div>
                </div>
            </div>
            <div class="item three">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            You cannot<b class="yellow"> believe</b> in <b class="yellow">God</b><br />
                            <span class="span">until you believe in yourself.</span></h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn btn-clear btn-sm btn-min-block">Android</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="btn btn-clear btn-sm btn-min-block">Apple</asp:HyperLink></div>
                    </div>
                </div>
            </div>
        </div>
     --%>   <!-- Controls -->
       
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
      </a>
      </div>
     <%--   <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                href="#carousel-example-generic" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                </span></a>--%>
    </div>
    <!-- Carousel -->
    <!-- Service Section -->
    <section id="services" class="padding50">
        <div class="container">
            <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span><strong>F</strong>eatures</span></h2>
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-heartbeat animated wow fadeInDown"></i>
                    <div class="sc-inner">
                        <h4>
                            Healthy Diet Plan</h4>
                        <p>
                            
                            Looking for a healthy diet plan?Believing that healthy life leads to success?
                             Subscribe to our website to receive
                            healthy plans!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class=" 	fa fa-thumbs-o-up" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4>
                            Reviews</h4>
                        <p>
                            Want to know reviews of customers on diet?You have subscribe
                            to the right website!
                            </p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-calendar animated wow fadeInDown" data-wow-delay="0.4s"></i>
                    <div class="sc-inner">
                        <h4>
                            Scheduled Diet Plan</h4>
                        <p>
                           Looking for the diet plan for weekly and monthly
                            you have visit the right page!        </p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-pie-chart animated wow fadeInUp" data-wow-delay="0.6s"></i>
                    <div class="sc-inner">
                        <h4>
                           Diet for BP, Cholesterol, Diabetes</h4>
                        <p>
                            Want to know the diet along with the recipes of these diseases? 
                             Our website comes with this facility !</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-key animated wow fadeInUp" data-wow-delay="0.8s"></i>
                    <div class="sc-inner">
                        <h4>
                            Tips</h4>
                        <p>
                            Tips that are key to your healthy lifestyle.
                             Keep in touch to know more about
                                 healthy tips !</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-youtube-play animated wow fadeInUp" data-wow-delay="0.10s"></i>
                    <div class="sc-inner">
                        <h4>
                            Video Support</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
        </div>
        <div class="clearfix">
        </div>
    </section>
    <!-- ./ End Service Section -->
    <!-- Page Content -->
    <div class="padding100" id="blog">
        <div class="container">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>OUR VISION</strong></span></h2>                    
                </div>
            </div>
            <!-- /.row -->
            <!-- Project One -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInLeft" data-wow-delay="0.2s" src="Assets/img/5.jpg"
                            alt="">                       
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                   <%-- <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>--%>
                 <u>  
                 
                 <p>
                 </p>
                 
                 
                 <p>
                 </p>
                 
                 <p>
                 </p>
                 
                  <p>
                      <strong> "Healthy lifestyle leads to happy family and happy family
                       is what you desire!"</strong>
                       </p>
                     <%--  <p>
                      <strong> "Fall in love with yourself,and take care of yourself!"</strong>
                       </p>
                       <p>
                      <strong> "Exercise is the king and nutrition is the queen,
                      altogether you have a kingdom!"</strong>
                       </p>
                       <p>
                      <strong> "Healthy lifestyle is not a short term diet,
                       it is a long term lifestyle change!"</strong>
                       </p>
                       <p>
                      <strong> "Health is like money, you have never an idea of it
                       until you lose it!"</strong>
                       </p>
                       <p>
                      <strong> "I believe that the greatest gift you can give
                       you family and the world is 'healthy you' "</strong>
                       </p>--%>
                 </u>
                  <%--  <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>--%>
                </div>
            </div>
            <!-- /.row -->
            <!-- Pagination -->
            <!--<div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li><a href="#">&laquo;</a> </li>
                    <li class="active"><a href="#">1</a> </li>
                    <li><a href="#">2</a> </li>
                    <li><a href="#">3</a> </li>
                    <li><a href="#">4</a> </li>
                    <li><a href="#">5</a> </li>
                    <li><a href="#">&raquo;</a> </li>
                </ul>
            </div>
        </div>      -->
        </div>
    </div>
    <!-- /.container -->
    <%--<!-- Products Section -->
    <section id="products" class="products-list padding100">
        <div class="container">
            <div class="row">
                <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
                    <h2 class="animated wow fadeInLeft" data-wow-delay="0.4s">
                        Our Innovative Latest <span class="common">' Products ' </span>All are free to download.
                        Get more ...</h2>                   
                </div>
            </div>
            <!-- ./end row -->
            <div class="row">
                <div class="col-sm-12 animated wow fadeInUp" data-wow-delay="0.6s">
                    <div id="screens" class="owl-carousel">
                        <div>
                            <img src="Assets/img/products/1.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="Assets/img/products/2.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="Assets/img/products/3.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="Assets/img/products/1.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="Assets/img/products/2.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="Assets/img/products/3.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="Assets/img/products/1.jpg" class="img-responsive" alt="screens">
                        </div>
                    </div>
                    <!-- ./ end slider -->
                </div>
            </div>
            <!-- ./ end row -->
        </div>
    </section>
    <!-- Download Section -->
    <section id="download" class="padding100">
        <div class="container">
            <div class="row">
                <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
                    <h2 class="animated wow fadeInLeft" data-wow-delay="0.4s">
                        Waiting for what <span class="common">' DOWNLOAD NOW'</span></h2>
                    
                </div>
            </div>
            <!-- ./end row -->
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-center">
                    <div class="download-wrap animated wow fadeInLeft" data-wow-delay="0.4s">
                        <a href="#" class="btn btn-download wow fadeInUp"><i class="fa fa-android"></i><strong>
                            Download App</strong> <span>From Play Store</span> </a><a href="#" class="btn btn-download app wow fadeInUp"
                                data-wow-delay="0.2s"><i class="fa fa-apple"></i><strong>Download App</strong> <span>
                                    From App Store</span> </a><a href="#" class="btn btn-download window wow fadeInUp"
                                        data-wow-delay="0.2s"><i class="fa fa-windows"></i><strong>Download App</strong>
                                        <span>From windows store</span> </a>
                    </div>
                </div>
            </div>
            <!-- ./end row -->
        </div>
    </section>--%>
    <!--End Download Section end-->

</asp:Content>

