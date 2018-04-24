<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Random Restaurant</title>
	<link rel="stylesheet" href="<?php echo base_url('css/style.css') ?>">
	<script src="<?php echo base_url('js/jquery.min.js') ?>"></script>
</head>
<body>
	<script type="text/javascript">
		var user_id = "<?php echo isset($_SESSION['user_id']) ? $_SESSION['user_id'] : NULL?>";
	</script>
	<nav id="nav-bar">
		<h2 class="logo" >
			<a href="<?php echo base_url() ?>">
				<span style="color: #ca661a">Random</span>
				<span style="color: #ca3415">Restaurant</span>
			</a>
		</h2>
		<ul>
			<li><a href="<?php echo base_url() ?>">Home</a></li> 
			<li><a href="<?php echo base_url('orders/index') ?>">Takeaway</a></li> 
			<li><a href="<?php echo base_url('location') ?>">Location</a></li>
			<li><a href="<?php echo base_url('users/index') ?>">Your Orders</a></li>
		</ul>
	</nav>
	<header>
		<?php if ($banner): ?>
			<section id="banner">
				<h1><?php if (isset($title)): echo $title; endif ?></h1>
			</section>
		<?php endif ?>
	</header>
	<main>