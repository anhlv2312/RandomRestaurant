
	<section id="users">
		<?php echo form_open('users/register'); ?>
			<?php echo validation_errors() ?>
			<p><?php echo $message ?></p>
			<label for="user_id">Your Phone Number:</label>
			<input tabindex="1" type="text" name="user_id" value="<?php echo set_value('user_id'); ?>">
			<label for="email">Email Address (optional):</label>
			<input tabindex="2" type="text" name="email" value="<?php echo set_value('email'); ?>">
			<label>Captcha:</label>
			<div class="g-recaptcha" data-sitekey="<?php echo $this->config->item('google_captcha_site') ?>"></div>
			<button tabindex="3" type="submit">Register</button>
		</form>
	</section>
	<script src='https://www.google.com/recaptcha/api.js'></script>