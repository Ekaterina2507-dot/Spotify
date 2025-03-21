<?php
global $con, $account;
include ("Includies/1/config.php");
include ("Includies/2/Constt.php");
include ("Includies/2/Account.php");


include ("Includies/1/regist.php");
include ("Includies/1/login.php");
function GetInputValue($name): void
{
    if(isset($_POST[$name])){
        echo $_POST[$name];
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Spotify!</title>
    <link rel="stylesheet" type="text/css" href="Includies/3/css/register.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="../Spotify/Includies/1/js/register.js"></script>
</head>
<body>
<?php
		if (isset($_POST['registerButton'])) {
			echo '<script>
					$(document).ready(function() {
						$("#loginForm").hide();
						$("#registerForm").show();
					});
				</script>';
		} else {
			echo '<script>
					$(document).ready(function() {
						$("#loginForm").show();
						$("#registerForm").hide();
					});
				</script>';
		}
	?>
<div id="background">
    <div id="loginContainer">
<div id="inputContainer">
    <form id="loginForm" action="register.php" METHOD="POST">
        <h2>Login to your account</h2>
        <p>
            <?php echo $account->getError(Constt::$loginFailed); ?>
            <label for="loginUsername">Email or username</label>
          <input id="loginUsername" name="loginUsername" type="text" placeholder="Email or username" required>
        </p>
        <p>
            <label for="loginPassword">Password</label>
            <input id="loginPassword" name="loginPassword" type="password" placeholder="Password" required>
        </p>
        <div class="hasAccountText">
            <span id="hideLogin">Don't have any account yet? Signup here.</span>
        </div>
        <button type="submit" name="loginBatton">Log In</button>

    </form>

    <form id="registerForm" action="register.php" METHOD="POST">
        <h2>Create to your account</h2>
        <p>
            <?php echo $account->getError(Constt::$UserNameCharac) ?>
            <?php echo $account -> getError(Constt::$userNameTaken); ?>
            <label for="Username">Username</label>
          <input id="Username" name="Username" type="text" placeholder="Username" value="<?php GetInputValue('Username') ?>" required>
        </p>

        <p>
            <?php echo $account->getError(Constt::$FirstNameCharac) ?>
            <label for="FirstName">First Name</label>
          <input id="FirstName" name="FirstName" type="text" placeholder="First Name" value="<?php GetInputValue('FirstName') ?>" required>
        </p>
        <p>
            <?php echo $account->getError(Constt::$SecNameCharac) ?>
            <label for="SecondName">Second Name</label>
          <input id="SecondName" name="SecondName" type="text" placeholder="Second Name" value="<?php GetInputValue('SecondName') ?>" required>
        </p>

        <p>
            <?php echo $account->getError(Constt::$emailDoNotMatch) ?>
            <?php echo $account->getError(Constt::$emailInvalid) ?>
            <?php echo $account->getError(Constt::$emailTaken) ?>
            <label for="email">Email</label>
          <input id="email" name="email" type="email" placeholder="name@gmail.com" value="<?php GetInputValue('email') ?>" required>
        </p>

        <p>
            <label for="email2">Confim Email</label>
          <input id="email2" name="email2" type="email" placeholder="name@gmail.com" value="<?php GetInputValue('email2') ?>" required>
        </p>

        <p>
            <?php echo $account->getError(Constt::$paswordDoNotMatch) ?>
            <?php echo $account->getError(Constt::$paswordNotAlf) ?>
            <?php echo $account->getError(Constt::$paswordCharakters) ?>
            <label for="Password">Password</label>
            <input id="Password" name="Password" type="password" placeholder="Password" value="<?php GetInputValue('Password') ?>" required>
        </p>

        <p>
            <label for="Password2">Confim Password</label>
            <input id="Password2" name="Password2" type="password" placeholder="Password" value="<?php GetInputValue('Password2') ?>" required>
        </p>
        <button type="submit" name="registerButton">SIGN UP</button>

        <div class="hasAccountText">
            <span id="hideRegister">Already have an account? Login here.</span>
        </div>

    </form>
</div>
        <div id="loginText">
				<h1>Get great music, right now</h1>
				<h2>Listen to loads of songs for free</h2>
				<ul>
					<li>Discover music you'll fall in love with</li>
					<li>Create your own playlist</li>
					<li>Follow artists to keep up to date</li>
				</ul>
			</div>
    </div>
    </div>
</body>
</html>
