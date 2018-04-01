<?php
class API extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('Reviews_model');
	}

	public function reviews($dish_code=NULL) {
		$result = $this->Reviews_model->get_reviews($dish_code);
		foreach ($result as $review) {
			$review->user_id = substr_replace($review->user_id,"***",3,-4);;
		}
		$json = json_encode($result);
		echo $json;
	}
}