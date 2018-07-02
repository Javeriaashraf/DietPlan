     <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fruits.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Cyrus Studio</title>

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>

<!-- font awesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet" href="Assets/a/assets/bootstrap/css/bootstrap.min.css" />

<!-- animate.css -->
<link rel="stylesheet" href="Assets/a/assets/animate/animate.css" />
<link rel="stylesheet" href="Assets/a/assets/animate/set.css" />

<!-- gallery -->
<link rel="stylesheet" href="Assets/a/assets/gallery/blueimp-gallery.min.css">

<!-- favicon -->
<link rel="shortcut icon" href="Assets/a/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="Assets/a/images/favicon.ico" type="image/x-icon">


<link rel="stylesheet" href="Assets/a/assets/style.css">

</asp:Content>








<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="topbar animated fadeInLeftBig"></div>
<!-- works -->
<div id="works"  class=" clearfix grid"> 
    <figure class="effect-oscar  wowload fadeIn">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[0] %>" alt="img01" style="width:440px;height:300px;" />
        <figcaption>
            <h2><%= fruit[0]%></h2>
            <p><%= fruitDetail[0]%><br>
           <a href="Handlerfruit.ashx?ImID=<%= fruit[0] %>" data-gallery>View more</a></p>            
        </figcaption>
    </figure>



     <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[1] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[1] %></h2>
            <p><%= fruitDetail[1]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[1] %>" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>



     <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[2] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[2] %></h2>
            <p><%= fruitDetail[2]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[2] %>" title="<%= this.fruit[2] %>" data-gallery>View more</a></p>            
        </figcaption>
    </figure>




     <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[3] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[3] %></h2>
            <p><%= fruitDetail[3]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[3] %>" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
    
     <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[4] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[4] %></h2>
            <p><%= fruitDetail[4]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[4] %>" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
     
       <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[5] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[5] %></h2>
            <p><%= fruitDetail[5]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[5] %>" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[6] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[6] %></h2>
            <p><%= fruitDetail[6]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[6] %>" title="<%= this.fruit[6] %>" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
     <figure class="effect-oscar  wowload fadeInUp">
        <img src="Handlerfruit.ashx?ImID=<%= fruit[7] %>" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[7] %></h2>
            <p><%= fruitDetail[7]%><br>
            <a href="Handlerfruit.ashx?ImID=<%= fruit[7] %>" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="Assets/a/images/fruits/pome.jpg" alt="img01" style="width:440px;height:300px"/>
        <figcaption>
            <h2><%= this.fruit[8] %></h2>
            <p><%= fruitDetail[8]%><br>
            <a href="Assets/a/images/fruits/pome.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="Assets/a/images/fruits/watermelon.jpg" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2><%= this.fruit[9] %></h2>
            <p><%= fruitDetail[9]%><br>
            <a href="Assets/a/images/fruits/watermelon.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="Assets/a/images/portfolio/11.jpg" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2>design</h2>
            <p>Lily likes to play with crayons and pencils<br>
            <a href="Assets/a/images/portfolio/11.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    
    
    
    <figure class="effect-oscar  wowload fadeInUp">
        <img src="Assets/a/images/portfolio/12.jpg" alt="img01" style="width:440px;height:300px;"/>
        <figcaption>
            <h2>studio</h2>
            <p>Lily likes to play with crayons and pencils<br>
            <a href="Assets/a/images/portfolio/12.jpg" title="1" data-gallery>View more</a></p>            
        </figcaption>
    </figure>
    

     
</div>
<!-- works -->
</style>




















<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h1 class="title"></h1>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->    
</div>



<!-- jquery -->
<script src="Assets/a/assets/jquery.js"></script>

<!-- wow script -->
<script src="Assets/a/assets/wow/wow.min.js"></script>


<!-- boostrap -->
<script src="Assets/a/assets/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

<!-- jquery mobile -->
<script src="Assets/a/assets/mobile/touchSwipe.min.js"></script>
<script src="Assets/a/assets/respond/respond.js"></script>

<!-- gallery -->
<script src="Assets/a/assets/gallery/jquery.blueimp-gallery.min.js"></script>

<!-- custom script -->
<script src="Assets/a/assets/script.js"></script>



</asp:Content>

