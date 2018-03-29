
	<section id="users">
		<?php echo form_open('users/login'); ?>
			<?php echo validation_errors() ?>
			<p><?php echo $message ?></p>
			<label for="user_id">Phone Number:</label>
			<input tabindex="1" type="text" name="user_id" value="<?php echo set_value('user_id'); ?>">
			<label for="password">Password:</label>
			<input tabindex="2" type="password" name="password" value="<?php echo set_value('password'); ?>">
			<label><h4><a href="<?php echo base_url('users/register') ?>">Or register a new account</a></h4></label>
			<button tabindex="3" type="submit">Login</button>
		</form>
	</section>