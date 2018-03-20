<?php
    include("dbaccess.php");
    session_start();

    $db = new MySQLDatabase();

    if($_SERVER["REQUEST_METHOD"] == "POST") {

        $db->connect();

        $myusername = mysqli_real_escape_string($db->link,$_POST['username']);
        $mypassword = md5(mysqli_real_escape_string($db->link,$_POST['password']));

        $count = $db->getNumRows("SELECT username FROM user WHERE username = '$myusername' and password = '$mypassword'");

        $db->disconnect();

        if($count == 1) {
            $_SESSION['username'] = $myusername;
            header("location: index.php");
        }else {
            $error = "Your Login Name or Password is invalid";
        }
    }
?>
<html>
   
   <head>
      <title>Login Page</title>
      
      <style type = "text/css">
         body {
            font-family:Arial, Helvetica, sans-serif;
            font-size:14px;
         }
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         }
         .box {
            border:#666666 solid 1px;
         }
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post">
                  <label>UserName: </label><input type = "text" name = "username" class = "box"/><br /><br />
                  <label>Password: </label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>