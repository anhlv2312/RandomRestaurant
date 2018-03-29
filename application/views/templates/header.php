<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Random Restaurant</title>
	<link rel="stylesheet" href="<?php echo base_url('css/style.css') ?>">
	<script src="<?php echo base_url('js/jquery.min.js') ?>"></script>
</head>
<body>
	<header>
		<section id="nav-bar">
			<h2 class="logo" >
				<a href="<?php echo base_url() ?>">
					<span style="color: #ca661a">Random</span>
					<span style="color: #ca3415">Restaurant</span>
				</a>
			</h2>
			<nav id="nav-menu">
				<ul>
					<li><a href="<?php echo base_url() ?>">Home</a></li> 
					<li><a href="<?php echo base_url('orders/takeaway') ?>">Takeaway</a></li> 
					<li><a href="<?php echo base_url('location') ?>">Location</a></li>
					<li><a href="<?php echo base_url('about') ?>">About Us</a></li>
					<?php if (isset($user_id)): ?>
						<li><a href="<?php echo base_url('users/logout') ?>">Logout</a></li>
					<?php else: ?>
						<li><a href="<?php echo base_url('users/login') ?>">Login</a></li>
					<?php endif ?>
				</ul>
			</nav>
			</section>
		<section id="banner">
			<h1><?php if (isset($title)) { echo $title; } ?></h1>
		</section>
	</header>
	<main>