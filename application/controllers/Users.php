<?php
require FCPATH . 'application/third_party/twilio-php-master/Twilio/autoload.php';
use Twilio\Rest\Client;

class Users extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');
		$this->load->library('form_validation');
		$this->load->helper(array('url', 'form', 'string', 'security'));
		$this->load->model('users_model');
		$this->data['banner'] = FALSE;
		$this->form_validation->set_message('user_exists', 'This {field} does not exists');
		$this->form_validation->set_message('is_unique', 'This {field} already exists.');
	}

	public function login() {
		if (isset($_SESSION['user_id'])) { header("Location: " . base_url() . 'users/view_account'); }

		$this->load->view('templates/header');
		$this->form_validation->set_rules('user_id', 'Phone Number', 'trim|required|xss_clean|min_length[8]|max_length[12]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|min_length[8]');

		$user_id = $this->input->post('user_id');
		$password = $this->input->post('password');
		
		if (!$this->form_validation->run()) {
			$this->data['status'] = "Login to your account";
			$this->load->view('users/login', $this->data);
		} else {
			if ($this->users_model->authenticate($user_id, $password)) {
				$_SESSION['user_id'] = $user_id;
				header("Location: " . base_url() . "users/view_account");
			} else {
				$this->data['status'] = "Your phone number or password is incorrect";
				$this->load->view('users/login', $this->data);
			}
		}
		$this->load->view('templates/footer');
	}

	public function logout() {
		session_destroy();
		header("Location: " . base_url() . "users/view_account");
	}

	public function view_account() {
		if (!isset($_SESSION['user_id'])) { header("Location: " . base_url() . 'users/login'); }

		$this->load->view('templates/header');
		$user_id = $_SESSION['user_id'];
		$this->data['status'] = "Your account information";
		$this->data['message'] = "Hello " . $user_id . ", have a nice day!";
		$this->load->view('users/account', $this->data);
		$this->load->view('templates/footer');
	}

	public function register() {
		$this->form_validation->set_rules('email', 'Email Address', 'trim|xss_clean|valid_email');
		$this->form_validation->set_rules('user_id', 'Phone Number', 'trim|numeric|required|xss_clean|is_unique[users.user_id]|min_length[8]|max_length[12]');

		$user_id = $this->input->post('user_id');
		$email = $this->input->post('email');

		$this->load->view('templates/header');
		if (!$this->form_validation->run()) {
			$this->data['status'] = "Register new account";
			$this->load->view('users/register', $this->data);
		} else if (!$this->verify_captcha()) {
			$this->data['status'] = "Please confirm you are not a robot";
			$this->load->view('users/register', $this->data);
		} else {
			$password = random_string('alnum', 10);
			$this->users_model->register($user_id, $password, $email);
			$this->data['status'] = "Register successfully";
			if ($this->config->item('twilio_enabled')) {
				$this->send_password_via_sms($user_id, $password);
				$this->data['message'] = "Your password has been sent to your phone number";
			} else {
				$this->data['message'] = "Your password is: <pre>" . $password . "</pre>";
			}
			$this->load->view('users/message', $this->data);
		}
		$this->load->view('templates/footer');
	}

	public function change_password() {
		$this->form_validation->set_rules('old_password', 'Old Password', 'trim|required|xss_clean|min_length[8]');
		$this->form_validation->set_rules('new_password', 'New Password', 'trim|required|xss_clean|min_length[8]');
		$this->form_validation->set_rules('confirm_password', 'Confirm Password', 'trim|required|xss_clean|matches[new_password]');
		$this->form_validation->set_rules('user_id', 'Phone Number', 'trim|numeric|required|xss_clean|min_length[8]|max_length[12]');

		$user_id = $this->input->post('user_id');
		$old_password = $this->input->post('old_password');
		$new_password = $this->input->post('new_password');

		$this->load->view('templates/header');
		if (!$this->form_validation->run()) {
			$this->data['status'] = "Change your password";
			$this->load->view('users/change', $this->data);
		} else if (!$this->verify_captcha()) {
			$this->data['status'] = "Please confirm you are not a robot";
			$this->load->view('users/change', $this->data);
		} else {
			if ($this->users_model->authenticate($user_id, $old_password)) {
				$_SESSION['user_id'] = $user_id;
				$this->users_model->set_password($user_id, $new_password);
				$this->data['status'] = "Password is changed successfully";
				$this->data['message'] = "Your password has been changed";
				$this->load->view('users/message', $this->data);
			} else {
				$this->data['status'] = "Your phone number or password is incorrect";
				$this->load->view('users/change', $this->data);
			}
		}
		$this->load->view('templates/footer');
	}

	public function reset_password() {
		$this->form_validation->set_rules('user_id', 'Phone Number', 'trim|numeric|required|xss_clean|callback_user_exists');

		$user_id = $this->input->post('user_id');

		$this->load->view('templates/header');
		if (!$this->form_validation->run()) {
			$this->data['status'] = "Reset your password";
			$this->load->view('users/reset', $this->data);
		} else if (!$this->verify_captcha()) {
			$this->data['status'] = "Please confirm you are not a robot";
			$this->load->view('users/reset', $this->data);
		} else {
			$new_password = random_string('alnum', 10);
			$this->users_model->set_password($user_id, $new_password);
			$email = $this->users_model->get_email($user_id);
			$this->data['status'] = "Reset password successfully";
			if ($this->config->item('twilio_enabled')) {
				$this->send_password_via_sms($user_id, $new_password);
				$this->data['message'] = "Your password has been sent to your phone number: " . $user_id;
			} else { 
				$this->data['message'] = "Your password is: <pre>" . $new_password . "</pre>";
			}
			$this->load->view('users/message', $this->data);
		}
		$this->load->view('templates/footer');
	}

	public function user_exists($user_id) {
		$user = $this->users_model->get_user($user_id);
		return isset($user);
	}

	private function verify_captcha() {
		if (!$this->config->item('google_captcha_enabled')) { return TRUE; }
		$post_data = http_build_query(array(
			'secret' => $this->config->item('google_captcha_secret'),
			'response' => $_POST['g-recaptcha-response'],
			'remoteip' => $_SERVER['REMOTE_ADDR']
		));
		$opts = array('http' => array(
			'method' => 'POST',
			'header' => 'Content-type: application/x-www-form-urlencoded',
			'content' => $post_data
		));
		$context = stream_context_create($opts);
		$response = file_get_contents('https://www.google.com/recaptcha/api/siteverify', FALSE, $context);
		$result = json_decode($response);
		return $result->success;
	}

	private function send_password_via_sms($phone_number, $password) {
		$sid = $this->config->item('twilio_sid');
		$token = $this->config->item('twilio_token');
		$client = new Client($sid, $token);

		$client->messages->create($phone_number, array(
			'from' => $this->config->item('twilio_number'),
			'body' => $password . " is your temporary password at " . 
				$this->config->item('roms_app_name') . 
				". Please login to change your password ASAP."
			));
	}

}