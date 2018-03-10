<?php
   define('DB_SERVER', 'localhost:3306');
   define('DB_USERNAME', 'roms');
   define('DB_PASSWORD', 'roms@uq#2018');
   define('DB_DATABASE', 'roms');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
?>