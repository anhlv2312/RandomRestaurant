
	<section id="users">
		<?php echo form_open('users/login'); ?>
			<h3><?php echo $message ?></h3>
			<?php echo validation_errors() ?>
			<label for="user_id">Your Phone Number:</label>
			<input type="text" name="user_id" value="<?php if (isset($user_id)): echo $user_id; else: echo set_value('user_id'); endif ?>">
			<label for="password">Password:</label>
			<input type="password" name="password" value="<?php echo set_value('password') ?>">
			<label><h4><a href="<?php echo base_url('users/register') ?>">Or register a new account</a></h4></label>
			<button type="submit">Login</button>
		</form>
	</section>