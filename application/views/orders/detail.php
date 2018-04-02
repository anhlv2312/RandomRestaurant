		<script type="text/javascript">
			$(document).ready(function(){
				update_bag();
			});
			function update_bag() {
				$('#bag').empty();
				total = 0;
				// $('#bag').append('<tr><th>&nbsp;</th><th>Name</th><th>Price</th><th>Sub</th></tr>');
				$.getJSON("<?php echo base_url('orders/get_items_from_bag') ?>", function(data){
					$.each(data, function(i, item){
						total += item.subtotal;
						$('#bag').append('<tr>');
						$('#bag').append('<td><span class="remove" id="' + item.rowid + '">&#10060;</span></td>');
						$('#bag').append('<td>' + item.qty + ' x <strong>' + item.id + '. ' + item.name + '</strong></td>');
						// $('#bag').append('<td style="text-align: right">$' + item.price.toFixed(2) + '</td>');
						// $('#bag').append('<td style="text-align: right"><strong>' + item.qty + '</strong></td>');
						$('#bag').append('<td style="text-align: right">$' + item.subtotal.toFixed(2) + '</td>');
						$('#bag').append('</tr>');
					});
					$('#bag').append('<tr><td class="total" colspan="3">Total Amount: <strong>$' + total.toFixed(2) + '</strong></td></tr>');
				});
			};
		</script>
		<aside id="order-detail">
			<h2>Order Detail</h2>
			<table id="bag"></table>
			<button type="button">Place Your Order</button>
		</aside>