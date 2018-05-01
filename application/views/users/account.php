
	<section id="users">
		<?php echo form_open(); ?>
			<h3><?php echo $status ?></h3>
			<label><?php echo $message ?></label>
			<?php foreach ($orders as $order): ?>
				<details>	
					<summary>
						<?php if ($order['expected_time'] == 0) : echo '<strike>'; endif ?>
							Order Number: <strong><?php echo $order['order_id'] ?></strong> (<?php echo $order['order_time'] ?>)
						<?php if ($order['expected_time'] == 0) : echo '</strike>'; endif ?>
					</summary>
					<ul>
					<?php foreach ($order['items'] as $item): ?>
						<li>
							<?php echo $item['quantity'] . ' x ' . $item['name'] ?>
						</li>
					<?php endforeach ?>
					<?php if ($order['expected_time'] != 0 && $order['pickup_time'] == 0): ?>
						<li class="cancel"><a href="<?php echo base_url('users/cancel_order/'. $order['order_id']) ?>"><strong>Cancel this order</strong></a></li>
					<?php elseif ($order['expected_time'] == 0): ?>
						<li class="cancel"><strong>Cancelled</strong></a></li>
					<?php elseif ($order['pickup_time'] != 0): ?>
						<li class="cancel"><strong>Finalised</strong> (<?php echo $order['pickup_time'] ?>)</a></li>
					<?php endif ?>
					</ul>
				</details>
			<?php endforeach ?>
			<label>Manage your account:</label>
			<ul>
				<li><a href="<?php echo base_url('users/change_password') ?>">Change your password</a></li>
				<li><a href="<?php echo base_url('users/change_email') ?>">Change your email address</a></li>
				<li><a href="<?php echo base_url('users/logout') ?>">Sing out of your account</a></li>
			</ul>
		</form>
	</section>