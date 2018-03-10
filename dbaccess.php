<?php
    define('DB_SERVER', 'localhost:3306');
    define('DB_USERNAME', 'roms');
    define('DB_PASSWORD', 'roms@uq#2018');
    define('DB_DATABASE', 'roms');

    class MySQLDatabase{

        function __construct(){
            $link = null;
        }

        function connect(){
        $this->link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD);
            if(!$this->link){
                die('Not connected: ' . mysqli_connect_error());
            }
            $db = mysqli_select_db($this->link, DB_DATABASE);
            if(!$db){
                die ('Cannot use: ' . DB_DATABASE);
            }
            return $this->link;
        }

        function disconnect(){
            mysqli_close($this->link);
        }

        function execute($query){
            return mysqli_query($this->link, $query);
        }

        function getNumRows($query){
            $result = $this->execute($query);
            return mysqli_num_rows($result);
        }

        function getRows($query){
            $result = $this->execute($query);
            return mysqli_fetch_array($result, MYSQLI_ASSOC);
        }

    }
?>