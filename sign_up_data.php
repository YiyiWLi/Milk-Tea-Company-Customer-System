<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up data</title>
</head>
    <style>
    h2   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif;}
    h3   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif;}
    p   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif;}
    form {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif;}
    img {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 25%;
            height:25%;
        }
    </style>
<body>
    <br>
    <br>
    <img src="Pictures/dolphin-logo.jpg" alt="dolphin">
    <br>
<?php
if (($_POST["last_name"]=="")||($_POST["email"]=="")||($_POST["first_name"]=="")){
   echo ("<h2>Sorry, failed. Please fulfill information to sign up!<h2>");
?>
   <p><a href="sign_up.php">Go back</a></p>
<?php
}else{
$_SESSION['first_name'] = $_POST["first_name"];
# Set up parameters to connect to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "MilkteaCompany";

# Create connection to database
$conn = mysqli_connect($servername, $username, $password, $dbname);

# Check the connection was successful
if (!$conn) {
	die(mysqli_connect_error());
}

$sql = <<<SQL
Call New_Customer("{$_POST["last_name"]}","{$_POST["first_name"]}","{$_POST["email"]}","{$_POST["phone"]}");
SQL;

# SQL query to run

# Send SQL query to the database
$result = mysqli_query($conn, $sql);
}
# Check if the modification was performed successfully
if ($result) {
    header("location: menu.php");
}

?>
</body>
</html>