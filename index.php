<?php
   include('session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title></title>
</head>
<body class="bg-light">
    
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <h3><a class="navbar-branch" ref="index.html">
            <span style="color: #ca661a">Random</span>
            <span style="color: #ca3415"> Restaurant</span>
        </a></h3>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item active"><a class="nav-link" href="#">Active</a></li> 
                <li class="nav-item"> <a class="nav-link" href="#">Link</a></li> 
                <li class="nav-item"> <a class="nav-link" href="#">Link</a></li> 
                <li class="nav-item"> <a class="nav-link disabled" href="#">Disabled</a> 
                </li> 
            </ul>
        </div>

        <?php if (isset($username)): ?>
            Hello <?=$username?> 
            <a href="logout.php">Logout</a>
        <?php else: ?>
            <a href="login.php">Login</a>
        <?php endif ?>

    </nav>

    <header>
        <div id="banner" src="images/pexels-photo-675951.jpeg"></div>
    </header>

    <aside class="">
        
    </aside>

    <main class=container>
        <div class="row">
            <div class="col-md-4 order-md-2 mb-4">OrderDetail</div>
            <div class="col-md-8 order-md-1">Menu</div>
        </div>
    </main>

    <footer class="my-5 ot-5 text-muted text-center text-small">
        <ul class="list-inline">
            <li class="list-inline-item">first</li>
            <li class="list-inline-item">second</li>
            <li class="list-inline-item">third</li>
        </ul>
    </footer>

</body>
</html>