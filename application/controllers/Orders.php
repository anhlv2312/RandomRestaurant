<?php
class Orders extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url');
		$this->load->model('dishes_model');
		$this->data=[];

		if (isset($_SESSION['user_id'])) {
			$this->data['user_id'] = $_SESSION['user_id'];
		}
	}

	public function takeaway() {
		$this->data['title'] = "Takeaway";
		$this->data['categories'] = $this->dishes_model->get_categories();
		$this->data['dishes'] = $this->dishes_model->get_dishes();
		$this->load->view('templates/header', $this->data);
		$this->load->view('orders/menu', $this->data);
		$this->load->view('orders/detail', $this->data);
		$this->load->view('templates/footer', $this->data);

	}
}