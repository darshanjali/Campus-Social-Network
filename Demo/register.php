<?php
session_start();
$con = mysqli_connect("localhost","root","","social");

if(mysqli_connect_errno())
{
	echo "failed to connect:" . mysqli_connect_errno();
}

//declating names
$fname = ""; // First name
$fname = ""; // First name
$em = ""; // Email
$em2 = ""; // Email 2
$password = ""; 
$password2 = ""; 
$profile_pic = "";
$date = ""; 
$error_array = array();

if(isset($_POST['register_button'])){

	//Registration form values

	//first name
	$fname = strip_tags($_POST ['reg_fname']); //remove html tags
	$fname = str_replace(' ', '',$fname); // remove spaces
	$fname = ucfirst(strtolower($fname)); //uppercase first letter
	$_SESSION['reg_fname'] = $fname; // storing first name in session variable

	//last name
	$lname = strip_tags($_POST['reg_lname']); //remove html tags
	$lname = str_replace(' ', '',$lname); // remove spaces
	$lname = ucfirst(strtolower($lname)); //uppercase first letter
	$_SESSION['reg_lname'] = $lname; // storing last name in session variable

	//email
	$em = strip_tags($_POST['reg_email']); //remove html tags
	$em = str_replace(' ', '',$em); // remove spaces
	$em = ucfirst(strtolower($em)); //uppercase first letter
	$_SESSION['reg_email'] = $em; // storing  email in session variable

	//email2
	$em2 = strip_tags($_POST['reg_email2']); //remove html tags
	$em2 = str_replace(' ', '',$em2); // remove spaces
	$em2 = ucfirst(strtolower($em2)); //uppercase first letter
	$_SESSION['reg_email2'] = $em2; // storing email2 in session variable

	//password
	$password = strip_tags($_POST['reg_password']); //remove html tags
	$password2 = strip_tags($_POST['reg_password2']); //remove html tags

	$date = date("Y-m-d");

	if($em == $em2){
		// checking valid email
		if(filter_var($em, FILTER_VALIDATE_EMAIL)) {
			$em = filter_var($em, FILTER_VALIDATE_EMAIL);

			//checking email existance
			$e_check = mysqli_query($con, "SELECT email FROM users WHERE email ='$em'");
			
			//counting number of rows returned
			$num_rows = mysqli_num_rows($e_check);

			if($num_rows > 0){
				array_push($error_array, "Email already in use<br>") ;
			}

		}
		else{
			array_push($error_array, "invalid email format<br>");
		}

	}
	else {
		array_push($error_array, "Emails don't match<br>");
	}

	if(strlen($fname) > 25 || strlen($fname) < 2){
		array_push($error_array, "your first name range should be from 2 to 25 characters<br>");
	}
	if(strlen($lname) > 25 || strlen($lname) < 2){
		array_push($error_array, "your last name range should be from 2 to 25 characters<br>");
	}
	if($password != $password2){
		array_push($error_array, "password do not match<br>");
	}
	else{
		if(preg_match('/[^A-Za-z0-9]/', $password)){
			array_push($error_array, "Your password can only contain english characters or numbers<br>");
		}
	}

	if(strlen($password > 30 || strlen($password) < 8)){
		array_push($error_array, "password must be between 8 and 30 characters<br>");
	}
	if(strlen($password2 > 30 || strlen($password2) < 8)){
		array_push($error_array, "password must be between 8 and 30 characters<br>");
	}




	if(empty($error_array)){
		$password = md5($password); //encrypting password before sending to database

		//generate username by concatinating first name and last name
		$username = strtolower($fname . "_" . $lname);
		$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username = '$username'");
		$i = 0;
		//if username exists add number to username
		while(mysqli_num_rows($check_username_query)!= 0) {
			$i++; // adding 1 to i
			$username = $username ."_" . $i;
			$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username = '$username'");
		}

		//Profile picture assignment
		$rand = rand(1,2); //random number between 1 & 2
		if($rand == 1)
			$profile_pic = "assets/images/profile_pics/defaults/head_deep_blue.png";
		else if($rand == 1)
			$profile_pic = "assets/images/profile_pics/defaults/head_emerald.png";





		$query = mysqli_query($con, "INSERT INTO users VALUES ('','$fname','$lname','$username','$em','$password','$date', '$profile_pic','0', '0','no',',')");
		array_push($error_array, "<span style='color: green;'> Your all set, go to login</span><br>");
		// clear session
		$_SESSION['reg_fname'] = "";
		$_SESSION['reg_lname'] = "";
		$_SESSION['reg_email'] = "";
		$_SESSION['reg_email2'] = "";
	}

		
}
?>


<!DOCTYPE html>
<html>
<head>
	<title>RV College of Engineering</title>
</head>
<body>
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
	</form>
</body>
</html>