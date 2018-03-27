<?php
class Users extends CI_Controller {

	public function view()
	{
		session_start();
		$this->load->view('users/login.php');
	}

	public function login() 
	{
		session_start();
		$_SESSION['user_id'] = "admin";
		header("Location: ../../index.php/home");
	}

	public function logout() 
	{
		session_start();
		$_SESSION['user_id'] = null;
		header("Location: ../../index.php/home");
	}

}

