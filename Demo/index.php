<?php 
include("includes/header.php");

 ?>
	<!DOCTYPE html>
	<html>
	<head>
		<title>Campus Social Network</title>
		<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	</head>
	<body>
		<section class="profile-sect">
			<img class="profle" src="<?php echo $user['profile_pic']; ?>">
			<hr /><br>
			
				<p>USERNAME: <?php echo $user['username']; ?></p>
				<p>EMAIL: <?php echo $user['email']; ?></p>
				<p>SIGNUP DATE: <?php echo $user['signup_date']; ?></p>
				<P>NUMBER OF POSTS: <?php echo $user['num_posts']; ?></P>
			
		</section>
	</body>
	</html>

	
	
	


</body>
</html>
