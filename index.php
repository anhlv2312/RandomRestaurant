<?php
   include('session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Random Restaurant</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$.getJSON('data.php?action=get_categories', function(data){
            $.each(data, function(i, item){
                $('.category-menu').append('<li><a href="">' + item.cat_name + '</a></li>');
                console.log(item);
            })
        });
	});
	</script>

</head>
<body>
	<nav>
		<h3 class="brand-name" >
			<a href="#">
				<span style="color: #ca661a">Random</span>
				<span style="color: #ca3415"> Restaurant</span>
			</a>
		</h3>
		<ul class="main-menu">
			<li><a href="#">Order</a></li> 
			<li><a href="#">View</a></li> 
			<li><a href="#">About</a></li> 
			<?php if (isset($username)): ?>
				<li><a href="logout.php">Logout</a></li>
			<?php else: ?>
				<li><a href="login.php">Login</a></li>
			<?php endif ?>
		</ul>
	</nav>

	<header>
		<h1 class="banner"></h1>
	</header>

	<main>

		<aside>
			<h3>OrderDetail</h3>
		</aside>

		<section>
            <ul class="category-menu">

            </ul>
		</section>
	</main>

	<footer>
		<ul>
			<li>first</li>
			<li>second</li>
			<li>third</li>
		</ul>
		<ul>
			<li>first</li>
			<li>second</li>
			<li>third</li>
		</ul>
		<ul>
			<li>first</li>
			<li>second</li>
			<li>third</li>
		</ul>
	</footer>

</body>
</html>