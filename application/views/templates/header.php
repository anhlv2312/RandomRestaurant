<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Random Restaurant</title>
	<link rel="stylesheet" href="<?php echo base_url('css/style.css') ?>">
	<script src="<?php echo base_url('js/jquery.min.js') ?>"></script>
</head>
<body>
	<dialog id="modal">
		<div class="body">
			<div class="header"></div>
			<div class="main"></div>
			<div class="footer">
				<span class="close">Close</span>
			</div>
		</div>
	</dialog>
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
					<li><a href="<?php echo base_url('contact') ?>">Contact Us</a></li>
					<?php if (isset($_SESSION['user_id'])): ?>
						<li><a href="<?php echo base_url('users/view_account') ?>">Your Account</a></li>
					<?php else: ?>
						<li><a href="<?php echo base_url('users/login') ?>">Login</a></li>
					<?php endif ?>
				</ul>
			</nav>
		</section>
		<?php if (isset($banner)): ?>
	 		<section id="banner">
				<h1><?php if (isset($title)): echo $title; endif ?></h1>
			</section>
		<? endif ?>
	</header>
	<main>