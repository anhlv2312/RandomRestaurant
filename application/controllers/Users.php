<?php
require FCPATH . 'application/libraries/twilio-php-master/Twilio/autoload.php';
use Twilio\Rest\Client;

class Users extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');
		$this->load->library('form_validation');
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->helper('security');
		$this->load->model('users_model');
		$this->data = [];

		$error = $this->input->get('error');
		if (isset($error)) {
			$this->data['error_message'] = "<p>".ucwords(str_replace('_',' ',$error)).".</p>";
		} else {
			$this->data['error_message'] = $error;
		}
	}

	public function login() {
		$this->form_validation->set_rules('user_id', 'Phone Number', 'trim|required|min_length[8]|max_length[12]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|min_length[8]');

		$user_id = $this->input->post('user_id');
		$password = $this->input->post('password');
		
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('templates/header.php');
			$this->load->view('users/login.php', $this->data);
			$this->load->view('templates/footer.php');
		} else {
			if ($this->users_model->authenticate($user_id, $password)) {
				$_SESSION['user_id'] = $user_id;
				header("Location: " . base_url() . "home");
			} else {
				header("Location: " . base_url() . "users/login?error=login_failed");
			}
		}

	}

	public function register() {
		$this->form_validation->set_rules('user_id', 'Phone Number', 'trim|numeric|required|min_length[8]|max_length[12]');
		$this->form_validation->set_rules('email', 'Email Address', 'trim|valid_email');

		$user_id = $this->input->post('user_id');
		$email = $this->input->post('email');

		if (!$this->form_validation->run()) {
			$this->load->view('templates/header.php');
			$this->load->view('users/register.php', $this->data);
			$this->load->view('templates/footer.php');
		} else {
			if (!$this->verify_captcha()){
				header("Location: " . base_url() . "users/register?error=captcha_verification_failed");
			} else {
				$this->users_model->register($user_id, $this->generate_password(), $email);
				//$this->send_otp();
			}
		}
	}

	private function verify_captcha() {
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
		$response = file_get_contents('https://www.google.com/recaptcha/api/siteverify', false, $context);
		$result = json_decode($response);
		return $result->success;
	}

	private function generate_password($length=10) {
		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$charactersLength = strlen($characters);
		$randomString = '';
		for ($i = 0; $i < $length; $i++) {
			$randomString .= $characters[rand(0, $charactersLength - 1)];
		}
		return $randomString;
	}

	private function send_password($phone_number, $password) {
		$sid = $this->config->item('twilio_sid');
		$token = $this->config->item('twilio_token');
		$client = new Client($sid, $token);

		$client->messages->create($phone_number, array(
				'from' => $this->config->item('twilio_number'),
				'body' => $password . " is your temporary password at " . 
				$this->config->item('roms_app_name') . 
				". Please login to change your password ASAP."
			)
		);
	}


	public function logout() {
		session_destroy();
		header("Location: ".base_url()."home");
	}
}