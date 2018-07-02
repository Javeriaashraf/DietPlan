<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="livewell.aspx.cs" Inherits="livewell" %>

<asp:Content ID="Content1"  ContentPlaceHolderID="head" Runat="Server">

 <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" />
      <%--<title>Fashion is our passion | Free responsive Fashion Blog template
      </title>--%>
      <meta name="description" content="Download free amazing responsive Fashion Blog template."/>
      <meta name="keywords" content="free, responsive, blog, fashion, web site, template"/>
      <link rel="stylesheet" href="Assets/livewell/css/components.css">
      <link rel="stylesheet" href="Assets/livewell/css/responsee.css">
      <!-- CUSTOM STYLE -->       
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="Assets/livewell/css/template-style.css">
      <script type="text/javascript" src="Assets/livewell/js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="Assets/livewell/js/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="Assets/livewell/js/modernizr.js"></script>
      <script type="text/javascript" src="Assets/livewell/js/responsee.js"></script>          
      <!--[if lt IE 9]> 
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
      <![endif]-->     
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
 <!-- TOP NAV WITH LOGO --> 
 <div >         
      <div class="margin-bottom">
         <div class="line">
            <nav>
             <div><h1>Healthy Tips</h1>
             <div></div>
             <div></div>
               <%--<div class="top-nav">
                  <p class="nav-text"></p>
                  <a class="logo" href="livewell/index.html">            
                  Fashion<span>Blog</span>
                  </a>            
                  <h1>free fashion blog template</h1>
                  <ul class="top-ul right">
                     <li>            
                        <a href="livewell/index.html">Blog</a>            
                     </li>
                     <li>            
                        <a href="livewell/about.html">About</a>            
                     </li>
                     <li>            
                        <a href="livewell/archive.html">Archive</a>            
                     </li>
                     <li>            
                        <a href="livewell/contact.html">Contact</a>            
                     </li>
                     <div class="social right">	           
                        <a target="_blank" href="https://www.facebook.com/myresponsee">
                        <i class="icon-facebook_circle icon2x"></i>
                        </a>          
                        <a target="_blank" href="https://twitter.com/MyResponsee">
                        <i class="icon-twitter_circle icon2x"></i>
                        </a>          
                     </div>
                  </ul>
               </div>--%>
               </div>
            </nav>
         </div>
      </div>
      <!-- MAIN SECTION -->                  
      <section id="home-section" class="line">
         <div class="margin">
            <!-- ARTICLES -->             
            <div class="s-12 l-9">
            
               <!-- ARTICLE 1 -->               
               <article class="post-1 line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="vegetable.aspx">
                     <img src="Assets/livewell/img/vege.jpg" alt="Fashion 1">
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="vegetable.aspx">
                        <h2>Vegetables</h2>
                     </a>
                     <h3>No list of healthiest vegetables would be complete without these nutritious powerhouses.</h3>   
                    </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">01</p>
                     <p class="month"></p>
                  </div>
               </article>
               
               <!-- ARTICLE 2 -->            
               <article class="post-2 right-align line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="fruits.aspx">
                     <img src="Assets/livewell/img/fruits.jpg" alt="Fashion 2">
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="fruits.aspx">
                        <h2>Fruits</h2>
                     </a>
                     <h3>Eating lots of vegetables and fruits helps reduce inflammation, and eating more plants can help you avoid conditions like heart disease, stroke, high blood pressure, diabetes and more.              
                     </h3>
                  </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">02</p>
                     <p class="month"></p>
                  </div>
               </article>
               
               <!-- ARTICLE 3 -->              
               <article class="post-3 line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="Exercise.aspx">
                     <img src="Assets/livewell/img/exer.jpg" alt="Fashion 3">
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="Exercise.aspx">
                        
                         <h2>Exercise</h2>
                     </a>
                     <h3>Getting and staying fit can be a challenge. For many of us, it's hard just to get up off the couch. So what's the secret of people who have managed to make exercise a way of life?             
                     </h3>              
                  </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">03</p>
                     <p class="month"></p>
                  </div>
               </article>
               
              <%-- <!-- ARTICLE 4 -->           
               <article class="post-4 right-align line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="<%--Assets/livewell/post-4.html--
                    <%-- <img src="Assets/livewell/img/reme.jpg" alt="Fashion 4">
                     </a>                
                  </div>
                  <!-- text -->                 
                 <%--<%-- <div class="s-12 l-5 post-text">
                     <a href="<%--Assets/livewell/post-4.html--
                       <%-- <h2>Home Remedies for Healthy lifestyle</h2>
                     </a>
                     <h3>We have a wide collection of Home remedies which can lead u to a healthy life and you can easily adopt it without any diet cutting.</h3>                 
                  </div>--%>
                 <!-- date -->                 
                 <%-- <div class="s-12 l-1 post-date">
                     <p class="date">04             
                     </p>
                     <p class="month">
                     </p>
                  </div>
               </article>--%>
              
              <%-- <!-- ARTICLE 5 -->              
               <article class="post-5 line">
                  <!-- text -->                 
                  <%--<div class="s-12 l-11 post-text">
                     <a href="livewell/post-5.html">
                        <h2>And again - it's totally free!</h2>
                     </a>
                     <p>Lorem ipsum dolor sit amet, conse ctetuer. Duis autem vemeu iriure dolor adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam</p>
                  </div>--%>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">             
                     </p>
                     <p class="month">             
                     </p>
                  </div>
               </article>
            </div>
            <!-- SIDEBAR -->             
            <div class="s-12 l-3">
               <aside>
                  <!-- NEWS 1 -->           
                  <img src="Assets/livewell/img/nuts.jpg" alt="News 1">          
                  <div class="aside-block margin-bottom">
                     <h2>Tips for Healthy, Glowing Skin</h2>
                     <h3>Brazil nuts are rich in selenium, which increases skin elasticity and may decrease skin cancer, according to recent studies. Throw in walnuts—which are loaded with omega-3 fatty acids—to lower inflammation and put the brakes on breakouts, says Molly Morgan, Board Certified Sports Specialist Dietitian and author of The Skinny Rules. Finally, add some macadamias to your diet for glowing skin.</h3>

Read more: http://www.womenshealthmag.co.uk/beauty-style/skin/108/30-easy-tips-for-glowing-skin#ixzz4n3qplIOd

                  </div>
                  <!-- NEWS 2 -->           
                  <img src="Assets/livewell/img/loseweight.jpg" alt="News 2">          
                  <div class="aside-block margin-bottom">
                     <h2>Tips to help you lose weight</h2>
                     <h3>Don't skip breakfast. Skipping breakfast won't help you lose weight. You could miss out on essential nutrients and you may end up snacking more throughout the day because you feel hungry.</h3>
                  </div>
                  <!-- AD REGION -->         
                  <div class="advertising margin-bottom">
                    <%-- <img src="livewell/img/banner.jpg" alt="ad banner">      --%>   
                  </div>
              --%> </aside>
            </div>
         </div>
      </section>
  </div> 
</asp:Content>

