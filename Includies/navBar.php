<?php
global $userLoggedIn;
?>
<div id="navBarContainer">
            <nav class="navBar">
                <span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
                    <img src="Includies/3/img/icons/logo.png">
                </span>
                <div class="group">
                    <div class="navItem">
                        <a href="search.php" class="navItemLink">Search
                        <img src="Includies/3/img/icons/search.png" alt="Search" class="icon" ></a>
                    </div>
                </div>
                <div class="group">
                    <div class="navItem">
                        <span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">Browse</span>
                    </div>
                    <div class="navItem">
                        <span role="link" tabindex="0" onclick="openPage('MyMusic.php')" class="navItemLink">Your Music</span>
                    </div>
                    <div class="navItem">
                        <span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink">Your Account</span>
                    </div>
                </div>
            </nav>
        </div>