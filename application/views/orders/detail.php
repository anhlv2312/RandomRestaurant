		<script type="text/javascript">
			$(document).ready(function(){
				update_bag();
			});
			function update_bag() {
				$('#bag').empty();
				$('#bag').append('<tr><th>Name</th><th>Price</th><th>Qtty</th><th>Sub</th><th></th></tr>');
				$.getJSON("<?php echo base_url('orders/get_items_from_bag') ?>", function(data){
					$.each(data, function(i, item){
						$('#bag').append('<tr>');
						$('#bag').append('<td>' + item.name + '</td>');
						$('#bag').append('<td style="text-align: right">' + item.price + '</td>');
						$('#bag').append('<td style="text-align: right">' + item.qty + '</td>');
						$('#bag').append('<td style="text-align: right">' + item.subtotal + '</td>');
						$('#bag').append('<td><span class="remove" id="' + item.rowid + '">&#10060;</span></td>');
						$('#bag').append('</tr>');
					});
				});
			};
		</script>
		<aside id="order-detail">
			<h2>Order Detail</h2>
			<table id="bag">
				<tr><th>Name</th><th>Price</th><th>Qty</th><th>Sub</th><th></th></tr>
			</table>
		</aside>		