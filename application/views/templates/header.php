<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php echo $title; ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../css/style.css">
	<script src="../js/jquery.min.js"></script>
</head>
<body>
	<nav>
		<h2 class="brand-name" >
			<a href="#">
				<span style="color: #ca661a">Random</span>
				<span style="color: #ca3415">Restaurant</span>
			</a>
		</h2>
		<ul class="nav-bar">
			<li><a href="home">Home</a></li> 
			<li><a href="order">Order</a></li> 
			<li><a href="about">About</a></li>
			<?php if ($_SESSION['user_id']==null): ?>
				<li><a href="Users/logout">Logout</a></li>
			<?php else: ?>
				<li><a href="Users/view">Login</a></li>
			<?php endif ?>
		</ul>
	</nav>
	<header>
		<h1 class="page-title"><?php echo $title; ?></h1>
	</header>