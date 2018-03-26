<?php
    include("dbaccess.php");
    session_start();

    $db = new MySQLDatabase();
   
    $username = $_SESSION['user_id'];

    $db->connect();
    $row = $db->getFirstRow("SELECT user_id FROM user WHERE user_id = '$username'");
    $db->disconnect();

    $username = $row['user_id'];
?>