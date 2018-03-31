
	<section id="users">
		<?php echo form_open('users/change_password'); ?>
			<h3><?php echo $status ?></h3>
			<?php echo validation_errors() ?>
			<label for="user_id">Your Phone Number:</label>
			<input type="text" name="user_id" value="<?php echo set_value('user_id', $user_id) ?>">
			<label for="old_password">Old Password:</label>
			<input type="password" name="old_password" value="<?php echo set_value('old_password') ?>">
			<label for="new_password">New Password:</label>
			<input type="password" name="new_password" value="<?php echo set_value('new_password') ?>">
			<label for="confirm_password">Confirm Password:</label>
			<input type="password" name="confirm_password" value="<?php echo set_value('confirm_password') ?>">
			<label>Captcha:</label>
			<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_captcha_site') ?>"></div>
			<button type="submit">Change Password</button>
		</form>
	</section>
	<script src="https://www.google.com/recaptcha/api.js"></script>