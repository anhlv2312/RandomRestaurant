<?php
class Orders extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library(array('session','cart'));
		$this->load->helper('url');
		$this->load->model(array('dishes_model','orders_model'));
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
		$items = $this->cart->contents();
		usort($items, function($a, $b) { 
			return $a['id'] > $b['id'] ? 1 : -1;
		});
		echo json_encode($items);
	}

	public function add_item_to_bag($dish_code, $var_name="Default") {
		$dish = $this->dishes_model->get_dish($dish_code);
		if ($dish == NULL) {
			show_404();
		} else {
			$variation = $this->dishes_model->get_variation($dish_code, $var_name);
			$dish['name'] = preg_replace("/\s\(.*\)/", "", $dish['name']);
			$dish['name'] = preg_replace("/[^A-Za-z0-9 ]/", '', $dish['name']);
			$data = array(
				'id' => $dish_code,
				'qty' => 1,
				'price' => $variation['price'],
				'name' => $dish['name'],
				'options' => array('variation' => $variation['var_name'])
			);
			$this->cart->insert($data);
			echo json_encode($data);
		}
	}

	public function remove_item_from_bag($row_id) {
		$data = array(
			'rowid' => $row_id,
			'qty' => 0
		);
		$this->cart->update($data);
	}

	public function place_order() {
		$items = $this->cart->contents();
		$this->orders_model->insert_order($items);
		echo json_encode($items);
	}

}