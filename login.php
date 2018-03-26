<?php
    include("dbaccess.php");
    session_start();
    $error = false;
    $db = new MySQLDatabase();

    if($_SERVER["REQUEST_METHOD"] == "POST") {

        $db->connect();

        $user_id = mysqli_real_escape_string($db->link,$_POST['user_id']);
        $password = md5(mysqli_real_escape_string($db->link,$_POST['password']));

        $count = $db->getNumRows("SELECT user_id FROM user WHERE user_id = '$user_id' and password = '$password'");

        $db->disconnect();

        if($count == 1) {
            $_SESSION['user_id'] = $user_id;
            header("location: index.php");
        } else {
            $error = true;
        }
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Random Restaurant - Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head> 
<body class="container-fluid">
    <div class="container">
        <div class="row ">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form class="form-control" action="" method="post">
                    <div class="form-group">
                        <label for="user_id">Username</label>
                        <input type="text" class="form-control" id="user_id" name="user_id">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="form-control btn btn-primary" action="">Login</button>
                    </div>
                    <?php if ($error): ?>
                        <div class="alert alert-danger">Login Failed!</div>
                    <?php endif ?>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</body>
</html>