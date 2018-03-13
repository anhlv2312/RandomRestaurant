<?php
    include("dbaccess.php");
    session_start();

    $db = new MySQLDatabase();
   
    $user_check = $_SESSION['login_user'];

    $db->connect();
    $row = $db->getRows("SELECT username FROM user WHERE username = '$user_check'");
    $db->disconnect();

    $login_session = $row['username'];

    if(!isset($_SESSION['login_user'])){
        header("location:login.php");
    }
?>