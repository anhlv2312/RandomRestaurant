<?php
class Users_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function authenticate($user_id, $password) {
		$query = $this->db->get_where("users", array('user_id' => $user_id));
		$row = $query->row();
		if (isset($row)) {
			return md5($password) == $row->password;
		}
		return false;
	}

	public function register($user_id, $password, $email) {
		$data = array(
			'user_id' => $user_id,
			'password' => md5($password),
			'email' => $email
		);
		$this->db->insert('users', $data);
	}
}