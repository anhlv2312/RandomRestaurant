
<?php
class Orders_model extends CI_Model {

	public function __construct() {
		$this->load->database();
		$this->load->model('dishes_model');
	}

	public function place_order($user_id, $items, $time) {
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

	public function cancel_order($user_id, $order_id) {
		try {
			$this->db->where(array('user_id' => $user_id, 'order_id' => $order_id));
			$this->db->update('orders', array('expected_time' => 0));
			return $order_id;
		} catch (Exception $e) {
			return 0;
		}
	}

	private function get_order_items($order_id) {
		$this->db->select('items.*, dishes.name');
		$this->db->join('dishes', 'dishes.dish_code = items.dish_code ');
		$query = $this->db->get_where('items', array('order_id' => $order_id));
		return $query->result_array();
	}

	public function get_orders($user_id) {
		$query = $this->db->get_where('orders', array('user_id' => $user_id));
		$result = $query->result_array();
		if (sizeof($result) > 0) {
			foreach ($result as &$order) {
				$order['items'] = $this->get_order_items($order['order_id']);
			}
		}
		return $result;
	}

	public function get_order($order_id) {
		$query = $this->db->get_where('orders', array('order_id' => $order_id));
		$result = $query->row_array();
		if (sizeof($result) > 0) {
			$result['items'] = $this->get_order_items($order_id);
		}
		$query = $this->db->get_where('receipts', array('order_id' => $order_id));
		$receipts = $query->row_array();
		if (sizeof($receipts) > 0) {
			$result['receipts'] = $receipts;
		}
		return $result;
	}

	public function get_latest_order($user_id) {
		$this->db->order_by('order_id', 'dsc');
		$query = $this->db->get_where('orders', array('user_id' => $user_id, 'expected_time !=' => 0,  'pickup_time' => 0));
		$order_id = $query->row_array()['order_id'];
		return $this->get_order($user_id, $order_id);
	}

	public function create_receipt($order_id) {
		try {
			$receipt = array(
				'order_id' => $order_id,
			);
			$this->db->insert('receipts', $receipt);
			$receipt_id = $this->db->insert_id();
			return $receipt_id;
		} catch (Exception $e) {
			return 0;
		}
	}

}