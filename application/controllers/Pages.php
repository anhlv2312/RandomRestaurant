<?php
class Pages extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url');
		$this->data['banner'] = TRUE;
	}

	public function view($page='home') {
		if (!file_exists(APPPATH.'views/pages/'.$page.'.php')) {
			show_404();
		}
		if ($page == "home") {
			$this->data['banner'] = FALSE;

		} else {
			$this->data['title'] = ucfirst($page);
		}
		$this->load->view('templates/header', $this->data);			
		$this->load->view('pages/'.$page, $this->data);	
		$this->load->view('templates/footer');
	}
}