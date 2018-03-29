	<section class="login">
		<?php echo form_open('users/login'); ?>
			<?php echo validation_errors() ?><?php echo $error_message ?>
			<label for="user_id">Username:</label>
			<input tabindex="1" type="text" name="user_id" value="<?php echo set_value('user_id'); ?>">
			<label for="password">Password:</label>
			<input tabindex="2" type="password" name="password" value="<?php echo set_value('password'); ?>">
			<button tabindex="3" type="submit">Login</button>
		</form>
	</section>