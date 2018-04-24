		<script type="text/javascript">
			$(document).ready(function(){
				<?php if (!isset($_SESSION['user_id'])): ?>
					$('aside').removeAttr('ondrop');
					$('aside').removeAttr('ondragover');
				<?php endif ?>
				$.getJSON("<?php echo base_url('orders/get_latest_order') ?>", function(data){
					if ($(data).length > 0) {
						<?php if (isset($_SESSION['user_id'])) { echo ("update_order(data);"); } ?>
						$('#order-detail button').hide();
					} else {
						update_bag();
						$('#order-detail button').show();
					}
				});
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
	
			function update_bag() {
				$('#bag').empty();
				total = 0;
				$.getJSON("<?php echo base_url('orders/get_items_from_bag') ?>", function(data){
					$.each(data, function(i, item){
						total += item.subtotal;
						$row = "";
						$row += '<tr class="row">';
						$row += '<td>' + item.qty + ' x <strong>' + item.id + '. ' + item.name + '</strong></td>';
						$row += '<td style="text-align: right"><span class="remove" row_id="' + item.rowid + '">&#10060;</span> ';
						$row += '$' + item.subtotal.toFixed(2) + '</td>';
						$row += '</tr>';
						$('#bag').append($row);
					});
					$('#bag').append('<tr class="total"><td colspan="2">Total Amount: <strong>$' + total.toFixed(2) + '</strong></td></tr>');
				});
			};

			function create_timer(datetime) {
				var countDownDate = new Date(datetime).getTime();
				var countDownInterval = setInterval(function() {
					var now = new Date().getTime();
					var distance = countDownDate - now;
					var days = Math.floor(distance / (1000 * 60 * 60 * 24));
					var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
					var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
					var seconds = Math.floor((distance % (1000 * 60)) / 1000);
					if (distance < 0) {
						clearInterval(countDownInterval);
						document.getElementById("countdown").innerHTML = "";
					} else {
						html = "<strong>(";
						if (days > 0) { html += days + "d ";}
						if (hours > 0) { html += hours + "d ";} 
						html += minutes + "m ";
						if (seconds < 10) { html += "0";}
						html += seconds + "s"; 
						html += ")</strong>"
						document.getElementById("countdown").innerHTML = html;
					}
				}, 1000);
			}

			function update_order(data) {
				$('#order-detail h2').text("Your active order detail");
				$('#bag').empty();
				total = 0;
				$.each(data.items, function(i, item){
					total += (item.price * item.quantity);
					$row = "";
					$row += '<tr class="row">';
					$row += '<td>' + item.quantity + ' x <strong>' + item.dish_code + '. ' + item.name + '</strong></td>';
					$row += '<td style="text-align: right">$' + (item.price * item.quantity).toFixed(2) + '</td>';
					$row += '</tr>';
					$('#bag').append($row);
				});
				$('#bag').append('<tr class="total"><td colspan="2">Total Amount: <strong>$' + total.toFixed(2) + '</strong></td></tr>');
				$('#bag').append('<tr class="time"><td colspan="2">Order Number: <strong>' + data.order_id + '</strong></td></tr>');
				$('#bag').append('<tr class="time"><td colspan="2">Order Time: ' + data.order_time + '</td></tr>');
				$('#bag').append('<tr class="time"><td colspan="2">Pickup Time: ' + data.expected_time + ' <span id="countdown"></span></td></tr>');
				create_timer(data.expected_time);
				$('aside').removeAttr('ondrop');
				$('aside').removeAttr('ondragover');
			}
			function place_order() {
				if ($('#bag tr.row').length === 0) {
					alert('Your bag is empty!');
				} else {
					$('#order-detail button').hide();
					$.getJSON("<?php echo base_url('orders/place_order') ?>", function(data){
						if ($(data).length > 0) {
							update_order(data);
						} else {
							alert('Unable to place your order!')
							$('#order-detail button').show();
						}
					});
				}
			}
		</script>
		<aside ondrop="drop(event)" ondragover="allowDrop(event)">
			<?php if (isset($_SESSION['user_id'])): ?>
	 			<section id="order-detail">
					<h2>Items in your bag</h2>
					<table id="bag"></table>
					<button onclick="place_order()">Place Your Order</button>
					<a href="<?php echo base_url('users/index') ?>">View Order History</a></li>
				</section>
			<?php else: ?>
				<section id="users">
					<?php echo form_open('users/login?referer=orders/index'); ?>
						<h3>Please login to place order</h3>
						<label for="user_id">Your Phone Number:</label>
						<input type="text" name="user_id">
						<label for="password">Password:</label>
						<input type="password" name="password">
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