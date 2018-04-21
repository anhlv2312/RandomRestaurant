		<script type="text/javascript">
			$(document).ready(function(){
				update_bag();
				update_active_orders();
			});

			function drag(event) {
				event.dataTransfer.setData("id", event.target.id);
			}

			function allowDrop(event) {
				event.preventDefault();
			}

			function drop(event) {
				var data = event.dataTransfer.getData("id");
				add_item(data);
				event.preventDefault();
			}
			function update_active_orders() {
				$.getJSON("<?php echo base_url('orders/get_orders') ?>", function(data){
					$('#active-orders').append('<td>ID</td><td>Order Time</td><td>Expected Time</td></tr>');
					$.each(data, function(i, item){
						total += item.subtotal;
						$row = "";
						$row += '<tr class="row">';
						$row += '<td>' + item.order_id + '</td>';
						$row += '<td>' + item.order_time + '</td>';
						$row += '<td>' + item.expected_time + '</td>';
						$row += '</tr>';
						$('#active-orders').append($row);
					});
				});				
			}
			function update_bag() {
				$('#bag').empty();
				total = 0;
				$.getJSON("<?php echo base_url('orders/get_items_from_bag') ?>", function(data){
					$.each(data, function(i, item){
						total += item.subtotal;
						$row = "";
						$row += '<tr class="row">';
						$row += '<td><span class="remove" row_id="' + item.rowid + '">&#10060;</span></td>';
						$row += '<td>' + item.qty + ' x <strong>' + item.id + '. ' + item.name + '</strong></td>';
						$row += '<td style="text-align: right">$' + item.subtotal.toFixed(2) + '</td>';
						$row += '</tr>';
						$('#bag').append($row);
					});
					$('#bag').append('<tr class="total"><td colspan="3">Total Amount: <strong>$' + total.toFixed(2) + '</strong></td></tr>');
				});
			};
			function place_order() {
				if ($('#bag tr.row').length === 0) {
					alert('Your bag is empty!');
				} else {
					$.getJSON("<?php echo base_url('orders/place_order') ?>", function(data){
						console.log(data)
						if ($(data).length > 0) {
							$('#bag').empty();
							$('#bag').append('<tr class="total"><td colspan="3">Total Amount: <strong>$0.00</strong></td></tr>');
							$('#active-orders').empty();
							update_active_orders()
						} else {
							alert('Unable to place your order!')
						}
					});
				}
			};
		</script>
		<aside ondrop="drop(event)" ondragover="allowDrop(event)">
			<?php if (isset($_SESSION['user_id'])): ?>
	 			<section id="order-detail">
					<h2>Active Orders</h2>
					<table id="active-orders"></table>
					<h2>Order Detail</h2>
					<table id="bag"></table>
					<button onclick="place_order()">Place Your Order</button>
				</section>
			<?php else: ?>
				<section id="users">
					<?php echo form_open('users/login?referer=orders/index'); ?>
						<h3>Please login to place order</h3>
						<?php echo validation_errors() ?>
						<label for="user_id">Your Phone Number:</label>
						<input type="text" name="user_id" value="<?php echo set_value('user_id') ?>">
						<label for="password">Password:</label>
						<input type="password" name="password" value="<?php echo set_value('password') ?>">
						<button type="submit">Login</button>
						<label>Other options:</label>
						<ul>
							<li><a href="<?php echo base_url('users/register') ?>">Register new account</a></li>
							<li><a href="<?php echo base_url('users/change_password') ?>">Change your password</a></li>
							<li><a href="<?php echo base_url('users/reset_password') ?>">Reset your password</a></li>
						</ul>
					</form>
				</section>
			<?php endif ?>
		</aside>