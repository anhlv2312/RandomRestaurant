<?php
	include('session.php');
	$action = $_GET['action'];
 	

	switch ($action) {
		case "get_dishes":
			get_dishes($db);
			break;
		case "get_categories":
			get_categories($db);
			break;
		default:
			echo "";
	}

	function get_dishes($db) {
		$db = new MySQLDatabase();
		$db->connect();
		$result = $db->getRows("SELECT * FROM dish");
		$db->disconnect();
		echo json_encode($result);		
	}

	function get_categories($db) {
		$db = new MySQLDatabase();
		$db->connect();
		$result = $db->getRows("SELECT * FROM category");
		$db->disconnect();
		echo json_encode($result);		
	}
?>