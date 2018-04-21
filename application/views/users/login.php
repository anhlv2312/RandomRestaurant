
	<section id="users">
		<?php echo form_open('users/login'); ?>
			<h3><?php echo $status ?></h3>
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
			</h4></label>
		</form>
	</section>