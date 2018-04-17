<?php
class Orders_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function insert_order($items) {
		foreach ($items as $key => $value) {
			echo json_encode($value);
		}
	}

}