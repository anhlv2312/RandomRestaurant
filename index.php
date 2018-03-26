<?php
   include('session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Random Restaurant</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript">
		function cleanString(string){
			result = string.replace(/[^a-zA-Z ]/g, "").replace(/\s+/g, "_").toLowerCase();
			return result;
		};
		$(document).ready(function(categories){
			$.getJSON('data.php?action=get_categories', function(data){
				data.forEach(function(item){
					$('ul.category-menu').append('<li>' + item.cat_name + '</li>');
					$('article.main-menu').append('<div id="' + cleanString(item.cat_name) + '"></div>');
				});
				$('article.main-menu div').hide();
				$('article.main-menu div:first-of-type').show();
			});
			$.getJSON('data.php?action=get_dishes', function(data){
				data.forEach(function(item){
					$('article.main-menu div#' + cleanString(item.cat_name)).append('<p><strong>' + item['name'] + '</strong></p><p>' + item['description'] + '</p>');
				});
			});

		});
		$(document).on('click', 'ul.category-menu li', function(){
			$('ul.category-menu li').removeClass('selected')
			$(this).addClass('selected');
			$('article.main-menu div').hide();
			$('article.main-menu div#' + cleanString($(this).text())).show();
		});
	</script>
</head>
<body>
	<nav>
		<h3 class="brand-name" >
			<a href="#">
				<span style="color: #ca661a">Random</span>
				<span style="color: #ca3415">Restaurant</span>
			</a>
		</h3>
		<ul class="nav-bar">
			<li><a href="">Home</a></li> 
			<li><a href="">Order Takeaway</a></li> 
			<li><a href="">Where we are</a></li>
			<li><a href="">About us</a></li>
			<?php if (isset($username)): ?>
				<li><a href="logout.php">Logout</a></li>
			<?php else: ?>
				<li><a href="login.php">Login</a></li>
			<?php endif ?>
		</ul>
	</nav>

	<header>
		<h1 class="page-title">Takeaway</h1>
	</header>

	<main>
		<?php if (isset($username)): ?>
			<aside class="order-detail">
				<h2 class="order-detail">OrderDetail</h2>
			</aside>
		<?php endif ?>

		<section>
			<ul class="category-menu"></ul>
			<article class="main-menu">

			</article>
		</section>

	</main>

	<footer>
		<article class="footer">
			<h4>Location</h4>
			<p>23 Random Street, St. Lucia, QLD 4067</p>
		</article>
		<article class="footer">
			<h4>Open hours</h4>
			<p>Lunch: 12:00pm to 3:00pm, Monday to Friday</p>
			<p>Dinner: 4:30pm to 10:30pm, Monday to Sunday</p>
		</article>
		<article class="footer">
			<h4>Contact</h4>
			<p>+61 450 087 209</p>
			<p>vuanh.le@uqconnect.edu.au</p>
		</article>
		<h3 class="brand-name" >
			<a href="#">
				<span style="color: #ca661a">Random</span>
				<span style="color: #ca3415"> Restaurant</span>
			</a>
		</h3>
	</footer>

</body>
</html>