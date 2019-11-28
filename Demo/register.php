<?php
require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';
?>


<!DOCTYPE html>
<html>
<head>
	<title>Campus Social Network</title>
	<link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
</head>
<body>

	<?php 
		if(isset($_POST['register_button'])) {
			echo '
			<script>

			$(document).ready(function() {
				$("#first").hide();
				$("#second").show();
				});

			</script>

			';


		}

	 ?>

	<div class="wrapper">

		<div class="login_box">

			<div class="login_header">
				<h1>Campus Social Network!</h1>
				Login or Sign up below!!
			</div>

			<div id="first">
				<form action="register.php" method="POST">
					<input type="email" name="log_email" placeholder="Email_Address" value="<?php
					if(isset($_SESSION['log_email'])){
						echo $_SESSION['log_email'];
						}
					?>" required>
					<br>
					<input type="password" name="log_password" placeholder="Password">
					<br>
					<?php if(in_array("Email or password was incorrect<br>", $error_array)) echo "Email or password was incorrect<br>"; ?>
					<br>
					<input type="submit" name="login_button" value="Login">
					<br>
					<a href="#" id="signup" class="signup">Not Registered? Register here!</a>

				</form>
			</div>

			<div id="second">
				<form action="register.php" method="POST">
					<input type="text" name="reg_fname" placeholder="First Name" value="<?php
					if(isset($_SESSION['reg_fname'])){
						echo $_SESSION['reg_fname'];
						}
					?>" required> 
					<br>

					<?php if(in_array("your first name range should be from 2 to 25 characters<br>", $error_array)) echo "your first name range should be from 2 to 25 characters<br>"; ?>

					<input type="text" name="reg_lname" placeholder="Last Name" value="<?php
					if(isset($_SESSION['reg_lname'])){
						echo $_SESSION['reg_lname'];
						}
					?>" required> <br>

					<?php if(in_array("your last name range should be from 2 to 25 characters<br>", $error_array)) echo "your last name range should be from 2 to 25 characters<br>"; ?>

					<input type="email" name="reg_email" placeholder="Email" value="<?php
					if(isset($_SESSION['reg_email'])){
						echo $_SESSION['reg_email'];
						}
					?>" required> <br>

					<input type="email" name="reg_email2" placeholder="Confirm email" value="<?php
					if(isset($_SESSION['reg_email2'])){
						echo $_SESSION['reg_email2'];
						}
					?>" required> <br>

					<?php if(in_array("Email already in use<br>", $error_array)) echo "Email already in use<br>" ;
						else if(in_array("invalid email format<br>", $error_array)) echo "invalid email format<br>"; 
						else if(in_array("Emails don't match<br>", $error_array)) echo "Emails don't match<br>"; ?>

					<input type="password" name="reg_password" placeholder="Password" required> <br>
					<input type="password" name="reg_password2" placeholder="Confirm password" required> <br>

					<?php if(in_array("password do not match<br>", $error_array)) echo "password do not match<br>";
						else if(in_array("Your password can only contain english characters or numbers<br>", $error_array)) echo "Your password can only contain english characters or numbers<br>"; 
						else if(in_array("password must be between 8 and 30 characters<br>", $error_array)) echo "password must be between 8 and 30 characters<br>"; ?>

					<input type="submit" name="register_button" value="Register"> 
					<br>

					<?php if(in_array("<span style='color: green;'> Your all set, go to login</span><br>", $error_array)) echo "<span style='color: green;'> Your all set, go to login</span><br>"; ?>

					<a href="#" id="signin" class="signin">Already have an account? Sign in here!</a>

				</form>

			</div>

			

		</div>

    </div>

</body>
</html>	
