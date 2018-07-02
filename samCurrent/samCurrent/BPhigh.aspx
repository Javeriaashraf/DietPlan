<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BPhigh.aspx.cs" Inherits="BPhigh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="Assets/css/w3.css">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
   

  
* {
    box-sizing: border-box;
}
.row::after {
    content: "";
    clear: both;
    display: table;
}
[class*="col-"] {
    float: left;
    padding: 15px;
}
.col-1 {width: 8.33%;}
.col-2 {width: 16.66%;}
.col-3 {width: 25%;}
.col-4 {width: 33.33%;}
.col-5 {width: 41.66%;}
.col-6 {width: 50%;}
.col-7 {width: 58.33%;}
.col-8 {width: 66.66%;}
.col-9 {width: 75%;}
.col-10 {width: 83.33%;}
.col-11 {width: 91.66%;}
.col-12 {width: 100%;}
html {
    font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.header {
    background-color: 	#03396c;
    color: #ffffff;
    padding: 15px;
    
}
.menu ul 
{
    
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.menu li {
    padding: 8px;
    margin-bottom: 7px;
    background-color: #33b5e5;
    color: #ffffff;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}
.menu li:hover {
    background-color: #0099cc;
}



.gap
{
    background-color:#00183f;
    padding:40px;
    }
  body 
  {
     color white;
    background-color: #00183f;
}





h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}


</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="table table-striped">
    <thead>
      <tr>
        <th></th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    </table>
<%--<div class="container-fluid">
<div id="divimage">
    <img src="Assets/healthytips/images/img_10.jpg"  alt="Cinque Terre" width="100%" height="333"> 
    </div>
      </div>
</div>--%>


<div class="header">
  <h1 class="w3-center">Blood Pressure High</h1>
  <h2 class="w3-center">Diet Reciepies</h2>
</div>

<%--<div class="gap">
</div >--%>
<ul class="nav nav-pills" style=" margin: 25px;">
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;" class="active"><a data-toggle="pill" href="#home">Day 1</a></li>
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;"><a data-toggle="pill" href="#menu1" >Day 2</a></li>
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;"><a data-toggle="pill" href="#menu2">Day 3</a></li>
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;"><a data-toggle="pill" href="#menu3">Day 4</a></li>
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;"><a data-toggle="pill" href="#menu4">Day 5</a></li>
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;"><a data-toggle="pill" href="#menu5">Day 6</a></li>
    <li style="background-color:#000f25;  border-radius: 5px; color :#005b96;"><a data-toggle="pill" href="#menu6">Day 7</a></li>
  </ul>
<div style=" background:white ; margin:25px;">
  <div class="row">
<%--
<div class="col-3 menu"  style= "padding-top: 50px;">
  <ul>
    <li>The Flight</li>
    <li>The City</li>
    <li>The Island</li>
    <li>The Food</li>
  </ul>
</div>
 <div class="columnside menu"  style=  "align:right; padding-top: 50px;">
  <ul>
    <li>The Flight</li>
    <li>The City</li>
    <li>The Island</li>
    <li>The Food</li>
  </ul>
</div>
--%>  <div class="tab-content col-12 " style=" margin:150px; ">
    <div id="home" class="tab-pane fade in active">
      <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div7">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/bp_breakfast_1.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="950">
    </div>
          
  
  

    <div class="w3-col m6 w3-padding-large">
      <h1 style=" color:#65B998;" class="w3-center">Breakfast</h1><br>
      <h3 style=" color:#65B998;"class="w3-center">A bowl of oats with milk + 1 banana</h3>
          <a onclick="myFunction('Demo1')" style="  background-color:#7FE8BF;"class="w3-margin-top w3-btn w3-block  w3-left-align">Nutritional Information</a>
            <div id="Demo1" class="w3-container w3-hide">
                <p class="w3-small">Calories per serving: 	140<br>Caloriesfromfat per serving: 	3%
                <br>Fat per serving: 	0.4g<br>Saturated fat per serving: 	0.0g<br>Monounsaturated fat per serving: 	0.1g<br>Polyunsaturated fat per serving: 	0.2g<br>Protein per serving: 	2.2g<br>Carbohydrate per serving: 	31.4g<br>Fiber per serving: 	4.1g<br>Cholesterol per serving: 	8mg<br>Iron per serving: 	0.6mg<br>Sodium per serving: 	64mg<br>Calcium per serving: 	86mg
            </div>
    
     <p style="  background-color:#7FE8BF; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Ingredients</p>
 <p style="margin:15px;"class="w3-small">3/4 cup fat-free sour cream<br>1/4 cup maple syrup<br>1 cup fresh blueberries<br>1 1/2 cups fresh raspberries
</p>

<p style="  background-color:#7FE8BF; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Preparation</p>
 <p style="margin:15px;"class="w3-small">1. Combine sour cream and maple syrup in a small bowl; stir with a whisk.<br>2. Combine berries, and spoon into dessert dishes; pour maple cream over berries.
</p>   
   </div>
  
 
  <hr>
  
  <!-- Menu Section -->

  <div class="w3-row w3-padding-64" id="Div8">
    <div class="w3-col l6 w3-padding-large">
      <h1 style=" color:#FF808C;" class="w3-center">Lunch</h1><br>
      <h3 style=" color:#FF808C;"class="w3-center">	Mediterranean Turkey Wrap</h3>
        <a onclick="myFunction('Demo2')" style="  background-color:#FFC9CE;"class="w3-margin-top w3-btn w3-block  w3-left-align">Nutritional Information</a>
            <div id="Div9 Demo2" class="w3-container w3-hide">
                <p  class="w3-small">Calories per serving: 	232<br>Caloriesfromfat per serving: 	0.0%<br>Fat per serving: 	10.1g<br>Saturated fat per serving: 	1.7g<br>Monounsaturated fat per serving: 	0.0g<br>Polyunsaturated fat per serving: 	0.0g<br>Protein per serving: 	6.3g<br>Carbohydrate per serving: 	34.2g<br>Fiber per serving: 	0.7g<br>Cholesterol per serving: 	0.0mg<br>Iron per serving: 	0.0mg<br>Sodium per serving: 	182mg<br>Calcium per serving: 	0.0mg

</div>
    
     <p style="  background-color:#FFC9CE; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Ingredients</p>
 <p style="margin:15px;"class="w3-small">8 tablespoons hummus
<br>4 whole-wheat wraps, heated
<br>12 ounces no-salt added, deli-style turkey
<br>½ large cucumber, peeled and diced (about 1 cup)
<br>2 roma tomatoes, diced (about 1 cup)
<br>¼ cup reduced-fat, crumbled feta cheese
<br>4 green olives, diced
</p>

<p style="  background-color:#FFC9CE; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Preparation</p>
 <p style="margin:15px;"class="w3-small">
1.	Spread 2 tablespoons hummus on wrap. Top with 3 ounces turkey, ¼ cup cucumber, ¼ cup tomatoes, 1 tablespoon feta cheese and 1 diced olive. Fold wrap to close. 
<br>2.	Repeat procedure for remaining 3 wraps.
</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/bp_lunch_1.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
  

     <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/bp_dinner_1.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="950">
    </div>
          
  
    

    <div class="w3-col m6 w3-padding-large">
      <h1 style=" color:#FFBC6E;" class="w3-center">Dinner</h1><br>
      <h3 style=" color:#FFBC6E;"class="w3-center">	Beef chop suey</h3>
          <a onclick="myFunction('Demo3')" style="  background-color:#FFD4A1;"class="w3-margin-top w3-btn w3-block  w3-left-align">Nutritional Information</a>
            <div id="Div10 Demo3" class="w3-container w3-hide">
                <p class="w3-small">Calories per serving: 	140<br>Caloriesfromfat per serving: 	3%
                <br>Fat per serving: 	0.4g<br>Saturated fat per serving: 	0.0g<br>Monounsaturated fat per serving: 	0.1g<br>Polyunsaturated fat per serving: 	0.2g<br>Protein per serving: 	2.2g<br>Carbohydrate per serving: 	31.4g<br>Fiber per serving: 	4.1g<br>Cholesterol per serving: 	8mg<br>Iron per serving: 	0.6mg<br>Sodium per serving: 	64mg<br>Calcium per serving: 	86mg
            </div>
    
     <p style="  background-color:#FFD4A1; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Ingredients</p>
 <p style="margin:15px;"class="w3-small">2 tsp rapeseed oil
  <br>  200g lean beef strips
  <br>  3cm ginger, peeled and finely chopped
   <br> 4 cloves garlic, thinly sliced
   <br> 1 onion, finely chopped
   <br> 1 carrot, matchsticks
   <br> 1 red pepper, thinly sliced
   <br> 150g tenderstem broccoli
   <br> 75g mangetout
   <br> 1 tbsp oyster sauce
   <br> 300g noodles
   <br> 2 tsp sesame seeds
</p>

<p style="  background-color:#FFD4A1; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Preparation</p>
 <p style="margin:15px;"class="w3-small">1.	 Heat the oil in a wok or large saucepan. Add the beef strips, stir for 1 minute, then add the ginger and garlic and stir for another minute. Remove the beef from the wok and set aside.
<br>2.	Put the wok back on the heat and add the onion and carrot. Stir for 2 minutes, then add the red pepper and broccoli. Stir for another 2-3 minutes.
<br>3.	Add 2-3 tbsp of water, then cover with a saucepan lid to trap the steam. Cook for a further 2 minutes.
<br>4.	Return the beef, along with any juices, to the wok. Stir well. Add the mangetout and noodles, then stir for 2 minutes, until the noodles are hot.
<br>5.	Finally, stir through the oyster sauce and place in bowls. Sprinkle with sesame seeds to serve.
</p>
<p style="  background-color:#FFD4A1; padding:10px;"class="w3-margin-top  w3-block  w3-left-align">Chef's tips </p>
 <p style="margin:15px;"class="w3-small">For a gluten-free version, use rice noodles.
<br>	You can use pork, chicken or turkey for this dish.
<br>	For a vegetarian version, use strips of tofu in place of beef.
</p>   
   </div>
  
  
</div>
</div>
      </div>
    <div id="menu1" class="tab-pane fade">
      <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div5">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">1 About Catering</h1><br>
      <h5 class="w3-center">Tradition since 1889</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="Div6">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
</div>
</div>
      </div>
    <div id="menu2" class="tab-pane fade">
    <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div3">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">2 About Catering</h1><br>
      <h5 class="w3-center">Tradition since 1889</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="Div4">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
</div>
</div>
     </div>
    <div id="menu3" class="tab-pane fade">
    <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div1">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">3 About Catering</h1><br>
      <h5 class="w3-center">Tradition since 1889</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="Div2">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
</div>
</div>
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
      <div id="menu4" class="tab-pane fade">
      <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div10">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">1 About Catering</h1><br>
      <h5 class="w3-center">Tradition since 1889</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="Div11">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
</div>
</div>
      </div>
      <div id="menu5" class="tab-pane fade">
      <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div12">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">1 About Catering</h1><br>
      <h5 class="w3-center">Tradition since 1889</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="Div13">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
</div>
</div>
      </div>
      <div id="menu6" class="tab-pane fade">
      <div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="Div14">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">1 About Catering</h1><br>
      <h5 class="w3-center">Tradition since 1889</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="Div15">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Menu</h1><br>
      <h4>Bread Basket</h4>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h4>Honey Almond Granola with Fruits</h4>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h4>Belgian Waffle</h4>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h4>Scrambled eggs</h4>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h4>Blueberry Pancakes</h4>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="Assets/healthytips/images/img_11.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" width="500" height="750">
    </div>
  </div>
</div>
</div>
      </div>
  </div>
  
  
 <%--
<div class="col-9" >
  <h1>The City</h1>
  <p>Chania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.</p>
  <p>Resize the browser window to see how the content respond to the resizing.</p>
</div>--%>
</div>











</div>
</div>
<script>
    function myFunction(id) {
        var x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>

</asp:Content>

