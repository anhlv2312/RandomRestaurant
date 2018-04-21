<?php
class Orders_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function insert_order($user_id, $items, $time) {
		try {
			$order = array(
				'user_id' => $user_id,
				'order_time' => date("Y-m-d H:i:s"),
				'expected_time' => date("Y-m-d H:i:s", strtotime($time)),
			);
			$this->db->insert('orders', $order);
			$order_id = $this->db->insert_id();
			foreach ($items as $key => $value) {
				$item = array(
					'order_id' => $order_id,
					'dish_code' => $value['id'],
					'var_name' => $value['options']['variation'],
					'price' => $value['price'],
					'quantity' => $value['qty'],
				);
				$this->db->insert('items', $item);
			}
			return $order_id;
		} catch (Exception $e) {
			return 0;
		}

	}

	public function get_orders($user_id) {
		$query = $this->db->get_where('orders', array('user_id' => $user_id));
		return $query->result_array();
	}

	public function get_order($user_id, $order_id) {
		$query = $this->db->get_where('orders', array('user_id' => $user_id, 'order_id' => $order_id));
		$result = $query->row_array();
		$items = $this->get_order_items($order_id);
		$total = 0;
		foreach ($items as $item) {
			$total = $total + $item['price'];
		}
		$result['total'] = $total;
		$result['items'] = $items;
		return $result;
	}

	public function get_order_items($order_id) {
		$query = $this->db->get_where('items', array('order_id' => $order_id));
		return $query->result_array();
	}

}