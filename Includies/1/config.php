<?php
ob_start();
session_start();

	$timezone = date_default_timezone_set("Europe/London");

	$server = "localhost";
	$username = "root";
	$password = "";
	$db = "Spotifyyy";
	$port = "3308";

    $con=mysqli_connect($server, $username, $password, $db, $port);
	if (mysqli_connect_errno()) {
		echo "Failed to connect: " . mysqli_connect_errno();
}
