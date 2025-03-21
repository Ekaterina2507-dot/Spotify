<?php

global $con;
if (isset($_SERVER['HTTP_X_REQUESTED_WITH'])) {
	include("Includies/2/User.php");
	include("Includies/1/config.php");
    include("Includies/2/Artist.php");
    include("Includies/2/Album.php");
    include("Includies/2/Song.php");
	include("Includies/2/Playlist.php");

	if (isset($_GET['userLoggedIn'])) {
		$userLoggedIn = new User($con, $_GET['userLoggedIn']);
	} else {
		echo "Username variable was not passed into the page. Check the openPage JS function";
		exit();
	}
} else {

    include("Includies/header.php");
	include("Includies/footer.php");

	$url = $_SERVER['REQUEST_URI'];
	echo "<script>openPage('$url');</script>";
	exit();
}
