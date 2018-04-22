
	<section id="users">
		<?php echo form_open(); ?>
			<h3><?php echo $status ?></h3>
			<label><?php echo $message ?></label>
			<?php echo json_encode($orders) ?>

			<label>Manage your account:</label>
			<ul>
				<li><a href="<?php echo base_url('users/change_password') ?>">Change your password</a></li>
			</ul>
			<br>
			<h3><a href="<?php echo base_url('users/logout') ?>">Logout</a></h3>
		</form>
	</section>