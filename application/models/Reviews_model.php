<?php
class Reviews_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function get_reviews($dish_code) {
		$query = $this->db->get_where('reviews', array('dish_code' => $dish_code));
		return $query->result();
	}

}