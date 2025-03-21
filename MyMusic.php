<?php
global $con;
global $userLoggedIn;
include("Includies/includedFiles.php");

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>

<div class="playlistContainer">
    <div class="gridViewContainer">
        <h2>Playlist</h2>
        <div class="buttonItems">
			<button class="button green" onclick="createPlaylist()">New Playlist</button>
		</div>
<?php

            $username = $userLoggedIn->getUsername();

			$playlistQuery = mysqli_query($con, "SELECT * FROM playlists WHERE owner='$username'");

			if (mysqli_num_rows($playlistQuery) == 0) {
				echo "<span class='noResults'>You don't have any playlists yet!</span>";
			}

			while($row = mysqli_fetch_array($playlistQuery)) {

				$playlist = new Playlist($con, $row);

				echo "<div class='gridViewItem' role='link' tabIndex='0' 
					onclick='openPage(\"playlist.php?id=" . $playlist->getId() . "\")'>

						<div class='playlistImage'>
							<img src='Includies/3/img/icons/playlist.png'>
						</div>

						<div class='gridViewInfo'>"
							. $playlist->getName() .
						"</div>
					</div>";
			}
		?>

    </div>

</div>
