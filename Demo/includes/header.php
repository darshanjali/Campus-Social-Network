<?php
require 'config/config.php';

if (isset($_SESSION['username'])) {
	$userLoggedIn = $_SESSION['username']; 
	$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
	$user = mysqli_fetch_array($user_details_query);
}
else{
	header("Location: register.php");
}

?>

<html>
<head>
	<title>Campus Social Network</title>
	<!--java script-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<!--css-->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<!--font-awesome cdn-->
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<!---single button-->
	<div class="top_bar">
		<div class="logo">
			<a href="index.php"><img src="assets/images/backgrounds/logo.jpeg"/></a>
		</div>
		<nav>
			<a href="#">
				<?php echo $user['first_name']; ?>
			
			<a href="index.php">
				<i class="fa fa-home fa-2x" aria-hidden="true"></i>
			</a>
			<a href="#">
				<i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
			</a>
			<a href="#">
				<i class="fa fa-bell fa-2x" aria-hidden="true"></i>
			</a>
			<a href="#">
				<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
			</a>
			<a href="#">
				<i class="fa fa-cogs fa-2x" aria-hidden="true"></i>
			</a>
		</nav>
	</div>
