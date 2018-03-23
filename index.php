<?php
   include('session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Random Restaurant</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    // $(document).ready(function(){
    //     $.getJSON("test.json", function(data){
    //         console.log(data);
    //         var content = data.a;
    //         $("<a href='dfasf'>dfafdfsadfdf</a>").appendTo("#test");
    //         console.log(content);
    //         $("#test").append(content);
    //     });
    // });
    </script>

</head>
<body>
    <nav>
        <h3>
            <a>
                <span style="color: #ca661a">Random</span>
                <span style="color: #ca3415"> Restaurant</span>
            </a>
        </h3>
        <ul>
            <li><a href="#">Active</a></li> 
            <li><a href="#">Link</a></li> 
            <li><a href="#">Link</a></li> 
            <li><a href="#">Disabled</a></li> 
        </ul>

        <div>
        <?php if (isset($username)): ?>
            Hello <?=$username?> 
            <a href="logout.php">Logout</a>
        <?php else: ?>
            <a href="login.php">Login</a>
        <?php endif ?>
        </div>

    </nav>

    <header>
        <h1 class="banner" src="images/pexels-photo-675951.jpeg"></h1>
    </header>

    <main>

        <aside>
            <h3>OrderDetail</h3>
        </aside>

        <article>
            <h3>Menu</h3>

        </article>
    </main>

    <footer>
        <ul>
            <li>first</li>
            <li>second</li>
            <li>third</li>
        </ul>
        <ul>
            <li>first</li>
            <li>second</li>
            <li>third</li>
        </ul>
        <ul>
            <li>first</li>
            <li>second</li>
            <li>third</li>
        </ul>
    </footer>

</body>
</html>