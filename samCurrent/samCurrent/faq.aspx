<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="Assets/faq/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="Assets/faq/css/style.css"> <!-- Resource style -->
	<script src="Assets/faq/js/modernizr.js"></script> <!-- Modernizr -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="cd-faq">
	<ul class="cd-faq-categories">
		<li><a class="selected" href="#general">General</a></li>
		<li><a href="#nutritional">Nutritional</a></li>
		<li><a href="#weight_loss">Weight-Loss</a></li>
		<li><a href="#dietary_needs">Dietary Needs</a></li>
		<li><a href="#plan_managemen">Plan Management</a></li>
        <%--<li><a href="#contact">Contact</a></li>--%>
	</ul> <!-- cd-faq-categories -->

	<div class="cd-faq-items">
		<ul id="general" class="cd-faq-group">
			<li class="cd-faq-title"><h2>General</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_General[0]%></a>
				<div class="cd-faq-content">
					<p><%= A_General[0]%></p>
                    	</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_General[1]%></a>
				<div class="cd-faq-content">
					<p><%= A_General[1]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_General[2]%></a>
				<div class="cd-faq-content">
				<p><%= A_General[2]%></p>
                </div> <!-- cd-faq-content -->
			</li>
           
           <li>
				<a class="cd-faq-trigger" href="#0"><%= Q_General[3]%></a>
				<div class="cd-faq-content">
					<p><%= A_General[3]%></p>
                  </div> <!-- cd-faq-content -->   
			</li>
           
              <li>
				<a class="cd-faq-trigger" href="#0"><%= Q_General[4]%></a>
				<div class="cd-faq-content">
					<p><%= A_General[4]%></p>
                  </div> <!-- cd-faq-content -->   
			</li>

			
		</ul> <!-- cd-faq-group -->

		
		<ul id="nutritional" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Nutritional</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_nutrition[0]%></a>
				<div class="cd-faq-content">
					<p><%= A_nutrition[0]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_nutrition[1]%></a>
				<div class="cd-faq-content">
					<p><%= A_nutrition[1]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_nutrition[2]%></a>
				<div class="cd-faq-content">
					<p><%= A_nutrition[2]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_nutrition[3]%></a>
				<div class="cd-faq-content">
					<p><%= A_nutrition[3]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

            <li>
				<a class="cd-faq-trigger" href="#0"><%= Q_nutrition[4]%></a>
				<div class="cd-faq-content">
					<p><%= A_nutrition[4]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

		</ul> <!-- cd-faq-group -->

		<ul id="weight_loss" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Weight-Loss</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Weight[0]%></a>
				<div class="cd-faq-content">
					<p><%= A_Weight[0]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Weight[1]%></a>
				<div class="cd-faq-content">
					<p><%= A_Weight[1]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Weight[2]%></a>
				<div class="cd-faq-content">
					<p><%= A_Weight[2]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

            <li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Weight[3]%></a>
				<div class="cd-faq-content">
					<p><%= A_Weight[3]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

            <li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Weight[4]%></a>
				<div class="cd-faq-content">
					<p><%= A_Weight[4]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

		</ul> <!-- cd-faq-group -->

		<ul id="dietary_needs" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Dietary Needs</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Diet[0]%></a>
				<div class="cd-faq-content">
					<p><%= A_Diet[0]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Diet[1]%></a>
				<div class="cd-faq-content">
					<p><%= A_Diet[1]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Diet[2]%></a>
				<div class="cd-faq-content">
					<p><%= A_Diet[2]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Diet[3]%></a>
				<div class="cd-faq-content">
					<p><%= A_Diet[3]%></p>
                    </div> <!-- cd-faq-content -->
			</li>


            <li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Diet[4]%></a>
				<div class="cd-faq-content">
					<p><%= A_Diet[4]%></p>
                    </div> <!-- cd-faq-content -->
			</li>



		</ul> <!-- cd-faq-group -->

		<ul id="plan_management" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Plan Management</h2></li>
			
			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Management[0]%></a>
				<div class="cd-faq-content">
					<p><%= A_Management[0]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Management[1]%></a>
				<div class="cd-faq-content">
					<p><%= A_Management[1]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Management[2]%></a>
				<div class="cd-faq-content">
					<p><%= A_Management[2]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Management[3]%></a>
				<div class="cd-faq-content">
					<p><%= A_Management[3]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0"><%= Q_Management[4]%></a>
				<div class="cd-faq-content">
					<p><%= A_Management[4]%></p>
                    </div> <!-- cd-faq-content -->
			</li>

		</ul> <!-- cd-faq-group -->
        <%--<ul id="contact" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Contact</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">How does syncing work?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit quidem delectus rerum eligendi mollitia, repudiandae quae beatae. Et repellat quam atque corrupti iusto architecto impedit explicabo repudiandae qui similique aut iure ipsum quis inventore nulla error aliquid alias quia dolorem dolore, odio excepturi veniam odit veritatis. Quo iure magnam, et cum. Laudantium, eaque non? Tempore nihil corporis cumque dolor ipsum accusamus sapiente aliquid quis ea assumenda deserunt praesentium voluptatibus, accusantium a mollitia necessitatibus nostrum voluptatem numquam modi ab, sint rem.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do I upload files from my phone or tablet?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi tempore, placeat quisquam rerum! Eligendi fugit dolorum tenetur modi fuga nisi rerum, autem officiis quaerat quos. Magni quia, quo quibusdam odio. Error magni aperiam amet architecto adipisci aspernatur! Officia, quaerat magni architecto nostrum magnam fuga nihil, ipsum laboriosam similique voluptatibus facilis nobis? Eius non asperiores, nesciunt suscipit veniam blanditiis veritatis provident possimus iusto voluptas, eveniet architecto quidem quos molestias, aperiam eum reprehenderit dolores ad deserunt eos amet. Vero molestiae commodi unde dolor dicta maxime alias, velit, nesciunt cum dolorem, ipsam soluta sint suscipit maiores mollitia assumenda ducimus aperiam neque enim! Quas culpa dolorum ipsam? Ipsum voluptatibus numquam natus? Eligendi explicabo eos, perferendis voluptatibus hic sed ipsam rerum maiores officia! Beatae, molestias!</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do I link to a file or folder?</a>
				<div class="cd-faq-content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis provident officiis, reprehenderit numquam. Praesentium veritatis eos tenetur magni debitis inventore fugit, magnam, reiciendis, saepe obcaecati ex vero quaerat distinctio velit.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->--%>

	</div> <!-- cd-faq-items -->
	<a href="#0" class="cd-close-panel">Close</a>
</section> <!-- cd-faq -->
<script src="Assets/faq/js/jquery-2.1.1.js"></script>
<script src="Assets/faq/js/jquery.mobile.custom.min.js"></script>
<script src="Assets/faq/js/main.js"></script> <!-- Resource jQuery -->


</asp:Content>
