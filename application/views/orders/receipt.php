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
	<table>
		<?php foreach ($order['items'] as $item): ?>
			<tr>
				<td><?php echo $item['quantity'] ?> x <?php echo $item['dish_code'] ?>. <?php echo $item['name'] ?></td>
				<td>$<?php echo number_format($item['price'], 2)?></td>
			</tr>
		<?php endforeach; ?>
		<tr class="total">
			<td colspan="2">Total Amount: <strong>$44.90</strong></td>
		</tr>
		<tr class="time">
			<td colspan="2">Order Number: <strong><?php echo $order['order_id'] ?></strong></td>
		</tr>
		<tr class="time">
			<td colspan="2">Order Time: <?php echo $order['order_time'] ?></td>
		</tr>
	</table>
</body>
</html>
