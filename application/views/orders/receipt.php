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
		<?php $total = 0; ?>
		<?php foreach ($order['items'] as $item): ?>
			<tr>
				<td><?php echo $item['quantity'] ?> x <?php echo $item['dish_code'] ?>.</td>
				<td><?php echo $item['name'] ?></td>
				<td>$<?php echo number_format($item['price'] * $item['quantity'], 2)?></td>
			</tr>
			<?php $total += $item['price'] * $item['quantity']; ?>
		<?php endforeach; ?>
		<tr class="total">
			<td colspan="3">Total Amount: <strong>$<?php echo number_format($total, 2) ?></strong></td>
		</tr>
		<tr class="time">
			<td colspan="3">Order Number: <strong><?php echo $order['order_id'] ?></strong></td>
		</tr>
		<tr class="time">
			<td colspan="3">Order Time: <?php echo $order['order_time'] ?></td>
		</tr>
	</table>
</body>
</html>
