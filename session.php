<?php
    include("dbaccess.php");
    session_start();

    $db = new MySQLDatabase();
   
    $username = $_SESSION['username'];

    $db->connect();
    $row = $db->getRows("SELECT username FROM user WHERE username = '$username'");
    $db->disconnect();

    $username = $row['username'];
?>