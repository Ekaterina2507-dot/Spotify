<?php
include ("Includies/1/config.php");
include ("Includies/2/Artist.php");
include ("Includies/2/Album.php");
include ("Includies/2/Song.php");

//session_destroy(); LOGOUT
if (isset($_SESSION['userLoggedIn'])){
    $userLoggedIn=$_SESSION['userLoggedIn'];
    echo "<script>userLoggedIn = '$userLoggedIn';</script>";
}
else{
    header("Location: register.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spotifyy</title>
    <link rel="stylesheet" href="../Spotify/Includies/3/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="Includies/1/js/script.js"></script>
</head>
<body>

<div id="mainContainer">
    <div id="topContainer">
        <?php include ("Includies/navBar.php"); ?>
        <div id="mainViewContainer">
           <div id="mainContent">