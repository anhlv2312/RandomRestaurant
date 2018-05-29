
	<section id="users">
		<?php echo form_open('users/register'); ?>
			<h3><?php echo $status ?></h3>
			<p>You may have a working phone number to register</p>
			<?php echo validation_errors() ?>
			<label for="user_id">Your Phone Number:</label>
			<input type="text" name="user_id" value="<?php echo set_value('user_id') ?>">
			<label for="email">Email Address:</label>
			<input type="text" name="email" value="<?php echo set_value('email') ?>">
			<label>Captcha:</label>
			<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_captcha_site') ?>"></div>
			<button type="submit">Register</button>
		</form>
	</section>
	<script src="https://www.google.com/recaptcha/api.js"></script>