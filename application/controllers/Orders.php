<?php
class Orders extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url');
		$this->data=[];

		if (isset($_SESSION['user_id'])) {
			$this->data['user_id'] = $_SESSION['user_id'];
		}
	}

	public function takeaway($page='home') {
			
		if ( ! file_exists(APPPATH.'views/pages/'.$page.'.php')) {
			show_404();
		}

		$this->data['title'] = "Takeaway";

		$this->load->view('templates/header', $this->data);
		$this->load->view('pages/'.$page, $this->data);
		$this->load->view('templates/footer', $this->data);

	}
}