<?php
class Dishes_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function get_categories() {
		$query = $this->db->get('categories');
		return $query->result();
	}

	public function get_dishes() {
		$query = $this->db->get('dishes');
		return $query->result();
	}


}