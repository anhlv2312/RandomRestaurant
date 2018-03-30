
	<section id="users">
		<?php echo form_open('users/register'); ?>
			<h3><?php echo $message ?></h3>
			<?php echo validation_errors() ?>
			<label for="password">Old Password:</label>
			<input type="password" name="password" value="<?php echo set_value('password') ?>">
			<label for="newpass">New Password:</label>
			<input type="password" name="newpass" value="<?php echo set_value('newpass') ?>">
			<label for="confpass">Confirm New Password:</label>
			<input type="password" name="confpass" value="<?php echo set_value('confpass') ?>">
			<label>Captcha:</label>
			<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_captcha_site') ?>"></div>
			<button type="submit">Change Password</button>
		</form>
	</section>
	<script src='https://www.google.com/recaptcha/api.js'></script>