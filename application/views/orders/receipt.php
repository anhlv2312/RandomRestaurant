<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Random Restaurant</title>
	<link rel="stylesheet" href="<?php echo base_url('css/style.css') ?>">
	<script src="<?php echo base_url('js/jquery.min.js') ?>"></script>
</head>
<body id="receipt">
	<h2 class="logo" >
		<span style="color: #ca661a">Random</span>
		<span style="color: #ca3415">Restaurant</span>
	</h2>
	<p>https://www.randomrestaurant.xyz</p>
	<p>23 Random Street, St. Lucia, QLD 4067</p>

	<h3>Order Receipt</h3>
	<ul>
	<li>Customer Number: <strong><?php echo $order['user_id'] ?></strong></li>
	<li>Order Time: <strong><?php echo $order['order_time'] ?></strong></li>
	<li>Order Number: <strong><?php echo $order['order_id'] ?></strong></li>
	</ul>
	<table>
		<?php $total = 0; ?>
		<?php foreach ($order['items'] as $item): ?>
			<tr>
				<td><?php echo $item['quantity'] ?> x </td><td><?php echo $item['dish_code'] ?>. <?php echo $item['name'] ?></td>
				<td>$<?php echo number_format($item['price'] * $item['quantity'], 2)?></td>
			</tr>
			<?php $total += $item['price'] * $item['quantity']; ?>
		<?php endforeach; ?>
		<tr>
			<td colspan="3">Total Amount: <strong>$<?php echo number_format($total, 2) ?></strong></td>
		</tr>
	</table>
</body>
</html>
