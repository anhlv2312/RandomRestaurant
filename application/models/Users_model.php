<?php
class Users_model extends CI_Model {

	public function __construct() {
		$this->load->database();
	}

	public function authenticate($user_id, $password) {
		$query = $this->db->get_where("users", array('user_id' => $user_id));
		$row = $query->row();
		if (isset($row)) {
			return password_verify($password, $row->password);
		}
		return FALSE;
	}

	public function register($user_id, $password, $email) {
		$data = array(
			'user_id' => $user_id,
			'password' => password_hash($password, PASSWORD_DEFAULT),
			'email' => $email
		);
		$this->db->insert('users', $data);
	}

	public function set_password($user_id, $password) {
		$data = array(
			'password' => password_hash($password, PASSWORD_DEFAULT),
		);
		$this->db->update('users', $data, array('user_id' => $user_id));
	}
}