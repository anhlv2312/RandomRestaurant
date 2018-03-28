<?php
class Users extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');
		$this->load->library('form_validation');
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->model('users_model');
		$this->data = [];
	}

	public function login() {
		$this->form_validation->set_rules('user_id', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		$user_id = $this->input->post('user_id');
		$password = $this->input->post('password');
		
		$failed = $this->input->get('failed');

		if (isset($failed)) {
			$this->data['error_message'] = "<p>Login Failed!</p>";
		} else {
			$this->data['error_message'] = "";
		}

		if ($this->form_validation->run() == FALSE) {
				$this->load->view('templates/header.php');
				$this->load->view('users/login.php', $this->data);
				$this->load->view('templates/footer.php');
		} else {
			if ($this->users_model->authenticate($user_id, $password)) {
				$_SESSION['user_id'] = $user_id;
				header("Location: ".base_url()."home");
			} else {
				header("Location: ".base_url()."users/login?failed");
			}
		}

	}

	public function logout() {
		session_destroy();
		header("Location: ".base_url()."home");
	}
}