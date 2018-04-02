<?php
class Orders extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library(array('session','cart'));
		$this->load->helper('url');
		$this->load->model('dishes_model');
		$this->data['banner'] = TRUE;
	}

	public function index() {
		$this->data['title'] = "Takeaway";
		$this->data['categories'] = $this->dishes_model->get_categories();
		$this->data['dishes'] = $this->dishes_model->get_dishes();
		$this->load->view('templates/header', $this->data);
		$this->load->view('orders/menu', $this->data);
		$this->load->view('orders/detail', $this->data);
		$this->load->view('templates/footer');
	}

	public function get_items_from_bag() {
		echo json_encode($this->cart->contents());
	}

	public function add_item_to_bag($dish_code, $var_name='Default') {
		$dish = $this->dishes_model->get_dish($dish_code);
		if ($dish == NULL) {
			show_404();
		} else {
			$variation = $this->dishes_model->get_variation($dish_code, $var_name);
			$dish['name'] = preg_replace("/\s\(.*\)/", "", $dish['name']);
			$data = array(
				'id'      => $dish_code,
				'qty'     => 1,
				'price'   => $variation['price'],
				'name'    => $dish['name'],
				'options' => array('variation' => $var_name)
			);
			$this->cart->insert($data);
		}
	}

}