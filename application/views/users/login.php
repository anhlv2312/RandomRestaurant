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
				<form class="form-control" action="login" method="post">
					<div class="form-group">
						<label for="user_id">Username</label>
						<input tabindex="1" type="text" class="form-control" id="user_id" name="user_id">
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input tabindex="2" type="password" class="form-control" id="password" name="password">
					</div>
					<div class="form-group">
						<button tabindex="3" type="submit" class="form-control btn btn-primary" action="">Login</button>
					</div>
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
</body>
</html>