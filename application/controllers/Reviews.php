<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reviews extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('cart');
		$this->load->model(Array('reviews_model','dishes_model'));
	}

	public function get_reviews($dish_code=NULL) {
		$result = $this->reviews_model->get_reviews($dish_code);
		$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : NULL;
		foreach ($result as &$review) {
			if ($review['user_id'] !== $user_id) {
				$review['user_id'] = substr_replace($review['user_id'],"****",3,-3);
			}
		}
		echo json_encode($result);
	}

	public function update_review() {
		if (isset($_SESSION['user_id'])) {
			$dish_code = $this->input->post('dish_code') !== NULL ? $this->input->post('dish_code') : "";
			$content = $this->input->post('content') !== NULL ? $this->input->post('content') : "";
			$rating = $this->input->post('rating') !== NULL ? $this->input->post('rating') : "";

			$review_id = $this->reviews_model->update_review($dish_code, $_SESSION['user_id'], $content, $rating);
			$result = $this->reviews_model->get_review($dish_code, $_SESSION['user_id']);
			echo json_encode($result);
		} else {
			echo "{}";
		}

	}

}