<?php
class Reviews_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function get_reviews($dish_code) {
		$query = $this->db->get_where('reviews', array('dish_code' => $dish_code));
		return $query->result_array();
	}

	public function get_review($dish_code, $user_id) {
		$query = $this->db->get_where('reviews', array('dish_code' => $dish_code, 'user_id' => $user_id));
		return $query->row_array();
	}

	public function update_review($dish_code, $user_id, $content, $rating) {
		try {
			$review = array(
				'dish_code' => $dish_code,
				'user_id' => $user_id,
				'content' => $content,
				'rating' => $rating
			);
			$this->db->replace('reviews', $review);
			$review_id = $this->db->insert_id();
			return $review_id;
		} catch (Exception $e) {
			return 0;
		}
	}
}