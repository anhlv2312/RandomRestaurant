<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reviews extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->library('cart');
		$this->load->model('Reviews_model');
	}

	public function get_reviews_by_dish($dish_code=NULL) {
		$result = $this->Reviews_model->get_reviews($dish_code);
		foreach ($result as $review) {
			$review->user_id = substr_replace($review->user_id,"***",3,-4);;
		}
		echo json_encode($result);
	}

}