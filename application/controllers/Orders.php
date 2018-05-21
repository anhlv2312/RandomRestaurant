<?php
class Orders extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library(array('session','cart'));
		$this->load->helper(array('url','form'));
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

	public function add_item_to_bag($dish_code) {
		$dish = $this->dishes_model->get_dish($dish_code);
		if ($dish == NULL) {
			show_404();
		} else {
			$variation = $this->dishes_model->get_variation($dish_code);
			$dish['name'] = preg_replace("/\s\(.*\)/", "", $dish['name']);
			$dish['name'] = preg_replace("/[^A-Za-z0-9 ]/", '', $dish['name']);
			$item = array(
				'id' => $dish_code,
				'qty' => 1,
				'price' => $variation['price'],
				'name' => $dish['name'],
				'options' => array('variation' => $variation['var_name'])
			);
			$this->cart->insert($item);
			echo json_encode($item);
		}
	}

	public function remove_item_from_bag($row_id) {
		$item = array(
			'rowid' => $row_id,
			'qty' => 0
		);
		$this->cart->update($item);
	}

	public function place_order() {
		$items = $this->cart->contents();
		if (isset($_SESSION['user_id']) && sizeof($items) > 0) {
			$order_id = $this->orders_model->place_order($_SESSION['user_id'], $items, $this->config->item('pickup_waiting_time'));
			$this->cart->destroy();
			$result = $this->orders_model->get_order($order_id);
			echo json_encode($result);
		} else {
			echo "{}";
		}
	}

	public function cancel_order($order_id) {
		if (isset($_SESSION['user_id'])) {
			$order_id = $this->orders_model->cancel_order($_SESSION['user_id'], $order_id);
			$result = $this->orders_model->get_order($order_id);
			echo json_encode($result);
		} else {
			echo "{}";
		}
	}

	public function get_order($order_id) {
		if (isset($_SESSION['user_id'])) {
			$result = $this->orders_model->get_order($order_id);
			echo json_encode($result);
		} else {
			echo "{}";
		}
	}

	public function get_latest_order() {
		if (isset($_SESSION['user_id'])) {
			$result = $this->orders_model->get_latest_order($_SESSION['user_id']);
			echo json_encode($result);
		} else {
			echo "{}";
		}
	}

	public function get_orders() {
		if (isset($_SESSION['user_id'])) {
			$result = $this->orders_model->get_orders($_SESSION['user_id']);
			echo json_encode($result);
		} else {
			echo "[]";
		}
	}

	public function pay_for_order($order_id) {
		if (isset($_SESSION['user_id'])) {
			$result = $this->orders_model->create_receipt($order_id);
			echo json_encode($result);
		} else {
			echo "[]";
		}
	}

	public function generate_receipt($order_id) {
		$result = $this->orders_model->get_order($order_id);
		if (isset($result['receipts'])) {
			$this->data['order'] = $result;
			$this->load->view('orders/receipt', $this->data);
		} else {
			show_404();
		}	
	}

	public function get_receipt($order_id) {
		if (!isset($_SESSION['user_id'])) { redirect('users/login'); }

		$receipt_url = $this->config->item('receipt_generator_url') . $order_id;

		if (get_headers($receipt_url, 1)[0] == "HTTP/1.1 200 OK") {

			$handle = popen('./receipts.sh ' . $receipt_url, 'r');

			sleep(5);

			$file = './receipts/temp.pdf';
			if (!file_exists($file)) show_404();
			if (!is_readable($file)) show_404();

			header('Cache-Control: public'); 
			header('Content-Type: application/pdf');
			header('Content-Disposition: attachment; filename="Receipt_For_Order_'. $order_id . '.pdf"');
			header('Content-Length: '.filesize($file));

			readfile($file);
		} else {
			show_404();
		}

	}

}