<?php
class Account{
    private $con;
    private array $errorArray;
    public function __construct($con) {

			$this->con = $con;
			$this->errorArray = array();
		}
    public function login($username, $password): bool
    {
			//$password = md5($password);
			$query = mysqli_query($this->con, "SELECT * FROM Users WHERE username = '$username' AND password='$password'");

			if (mysqli_num_rows($query) == 1) {
				return true;
			} else {
				$this->errorArray[] = Constt::$loginFailed;
				return false;
			}
		}
    public function register($un, $ps1, $ps2, $em1, $em2, $fn, $sn ): bool
    {
        $this->validateUsername($un);
        $this->validateFirstName($fn);
        $this->validateSecondName($sn);
        $this->validateEmail($em1, $em2);
        $this->validatePassword($ps1, $ps2);
        if (empty($this->errorArray)){
            return $this->insertUserDetails($un, $fn, $sn, $em1, $ps1);
        }
        else{
          return false;
        }
    }

    public function getError($error): string
    {
        if (!in_array($error, $this->errorArray)){
            $error="";
        }
        return "<span class='error'>$error</span>";
    }

    private function insertUserDetails($username, $firstName, $lastName, $email, $password): mysqli_result|bool
    {
		$encryptedPassword = $password;
			$profilePic="3/img/profile/user.png";
			$date = date("Y-m-d");

            return mysqli_query($this->con, "INSERT INTO Users (username, firstname, lastname, email, password, signup_date, profile_pic) VALUES ('$username', '$firstName', '$lastName', '$email', '$encryptedPassword', '$date', '$profilePic')");
		}
    private  function validateUsername($un): void
    {
        if (strlen($un) > 25 || strlen($un) < 5) {
            $this->errorArray[] = Constt::$UserNameCharac;
            return;
        }

        $chekUserQuery = mysqli_query($this->con, "SELECT * FROM Users WHERE username = '$un'");

        if (mysqli_num_rows($chekUserQuery) != 0) {
            $this->errorArray[] = Constt::$userNameTaken;
            return;
        }
    }
    private function validatePassword($ps1, $ps2): void
    {
        if ($ps1!=$ps2){
            $this->errorArray[] = Constt::$paswordDoNotMatch;
            return;
        }
        if (preg_match('/[^A-Za-z0-9]/', $ps1)){
            $this->errorArray[] = Constt::$paswordNotAlf;
            return;
        }

        if (strlen($ps1) > 25 || strlen($ps1) < 8) {
				$this->errorArray[] = Constt::$paswordCharakters;
				return;
			}
    }
    private function validateEmail($em1, $em2): void
    {
        if ($em1!=$em2){
            $this->errorArray[] = Constt::$emailDoNotMatch;
            return;
        }

        if(!filter_var($em1,FILTER_VALIDATE_EMAIL)){
            $this->errorArray[] = Constt::$emailInvalid;
            return;
       }
//        $chekUserQuery = mysqli_query($this->con, "SELECT * FROM Users WHERE email = '$em1'");
//        if (mysqli_num_rows($chekUserQuery != 0)){
//          $this->errorArray[] = Constt::$emailTaken;
//          return;
//        }
    }
    private function validateFirstName($fn): void
    {
        if (strlen($fn) > 25 || strlen($fn) < 3) {
				$this->errorArray[] = Constt::$FirstNameCharac;
				return;
			}
    }
    private function validateSecondName($sn): void
    {
        if (strlen($sn) > 25 || strlen($sn) < 3) {
				$this->errorArray[] = Constt::$SecNameCharac;
				return;
			}
    }


}

