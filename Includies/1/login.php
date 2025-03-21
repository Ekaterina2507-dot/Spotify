<?php

global $account;
if (isset($_POST['loginBatton'])) {
	//login button was pressed
	$username = $_POST['loginUsername'];
	$password = $_POST['loginPassword'];

	$result = $account -> login($username, $password);
echo "1";
	if ($result) {
        echo "2";
		$_SESSION['userLoggedIn'] = $username;
echo "3";
		header("Location: index.php");
        echo "4";
	}
}

