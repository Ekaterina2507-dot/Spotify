<?php
global $account, $con;
$account = New Account($con);

function santizeUsingName($InputText): array|string
{
    $InputText = strip_tags($InputText);
    return str_replace("'", "", $InputText);
}

function santizeString($InputText): string
{
    $InputText = strip_tags($InputText);
    $InputText = str_replace(" ", "", $InputText);
    return ucfirst(strtolower($InputText));
}

function santizePassword($InputText): string
{
    return strip_tags($InputText);
}



if (isset($_POST['registerButton'])){
    //Register button was cliked
    $username = santizeUsingName($_POST['Username']);
    $FirstName = santizeString($_POST['FirstName']);
    $SecondName = santizeString($_POST['SecondName']);
    $email = santizeString($_POST['email']);
    $email2 = santizeString($_POST['email2']);
    $Password = santizePassword($_POST['Password']);
    $Password2 = santizePassword($_POST['Password2']);

    $wasSucceful = $account->register($username, $Password, $Password2, $email, $email2, $FirstName, $SecondName);

    if ($wasSucceful){
        $_SESSION['userLoggedIn'] = $username;
        header('Location: index.php');
    }
}



