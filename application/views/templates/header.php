<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Random Restaurant</title>
	<link rel="stylesheet" href="<?php echo base_url() ?>css/style.css">
	<script src="<?php echo base_url() ?>js/jquery.min.js"></script>
</head>
<body>
	<nav>
		<h2 class="brand-name" >
			<a href="<?php echo base_url() ?>">
				<span style="color: #ca661a">Random</span>
				<span style="color: #ca3415">Restaurant</span>
			</a>
		</h2>
		<ul class="nav-bar">
			<li><a href="<?php echo base_url() ?>">Home</a></li> 
			<li><a href="<?php echo base_url() ?>orders/takeaway">Order Takeaway</a></li> 
			<li><a href="<?php echo base_url() ?>about">About Us</a></li>
			<?php if (isset($user_id)): ?>
				<li><a href="<?php echo base_url() ?>users/logout">Logout</a></li>
			<?php else: ?>
				<li><a href="<?php echo base_url() ?>users/login">Login</a></li>
			<?php endif ?>
		</ul>
	</nav>
	<header>
		<h1 class="page-title"><?php if (isset($title)) { echo $title; } ?></h1>
	</header>