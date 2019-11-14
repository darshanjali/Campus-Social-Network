<?php
ob_start(); //turns on output buffering
session_start();
$con = mysqli_connect("localhost","root","","social");

$timezone = date_default_timezone_set("Asia/Kolkata");

if(mysqli_connect_errno())
{
	echo "failed to connect:" . mysqli_connect_errno();
}

?>
