<?php
class Dishes_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function get_categories() {
		$this->db->order_by("priority");
		$query = $this->db->get('categories');
		return $query->result();
	}

	public function get_dishes() {
		$this->db->order_by("dish_code");
		$query = $this->db->get('dishes');
		return $query->result();
	}

	public function get_dish($dish_code) {
		$query = $this->db->get_where('dishes', array('dish_code' => $dish_code));
		return $query->row_array();
	}

	public function get_variation($dish_code) {
		$query = $this->db->get_where('variations', array('dish_code' => $dish_code));
		return $query->row_array();
	}

}