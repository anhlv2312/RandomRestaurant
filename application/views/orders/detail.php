		<script type="text/javascript">
			$(document).ready(function(){
				update_bag();
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
						$('#bag').append('<tr>');
						$('#bag').append('<td><span class="remove" row_id="' + item.rowid + '">&#10060;</span></td>');
						$('#bag').append('<td>' + item.qty + ' x <strong>' + item.id + '. ' + item.name + '</strong></td>');
						$('#bag').append('<td style="text-align: right">$' + item.subtotal.toFixed(2) + '</td>');
						$('#bag').append('</tr>');
					});
					$('#bag').append('<tr><td class="total" colspan="3">Total Amount: <strong>$' + total.toFixed(2) + '</strong></td></tr>');
				});
			};
			function place_order() {
				$.getJSON("<?php echo base_url('orders/place_order') ?>", function(data){
					update_bag();
				});
			};
		</script>
		<aside id="order-detail" ondrop="drop(event)" ondragover="allowDrop(event)">
			<h2>Order Detail</h2>
			<table id="bag"></table>
			<button type="button" onclick="place_order();">Place Your Order</button>
		</aside>