<?php
class Users_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function authenticate($user_id, $password) {
		$query = $this->db->query("SELECT * FROM `users` WHERE `user_id` = '$user_id';");
		$row = $query->row_array();
		if (isset($row)) {
			if (md5($password) == $row['password']) {
				return true;
			}
		}
		return false;
	}
}