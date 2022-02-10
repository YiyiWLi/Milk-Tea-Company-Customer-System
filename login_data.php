<?php
session_start();
$_SESSION["first_name"]=$_POST["first_name"];
$_SESSION["email"]=$_POST["email"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Data</title>
</head>
    <style>
    #body {background-color: linen;}
    #h3   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif; margin-top:10%;}
    h2   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif;}
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

<?php
if (empty($_SESSION["first_name"]) || empty($_SESSION["email"])){
    echo("<h2>Please enter your first name and email to login!<h2>");
?>
    <p><a href="login.php">Go back</a></p>
<?php
}else{
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

# SQL query to run
$sql = <<<SQL
Call Login("{$_SESSION["first_name"]}","{$_SESSION["email"]}");
SQL;

# Send SQL query to the database
$result = mysqli_query($conn, $sql);
}


$data = mysqli_fetch_all($result, MYSQLI_ASSOC);

if (empty($data)){
    echo("<h2>Failed to login. Please try again your first name and email!<h2>");
?>
    <p><a href="login.php">Go back</a></p>
<?php
}else{
foreach ($data as $key => $value){
    $_SESSION["rewards"]=$value["Rewards"];
    $_SESSION["CustomerID"]=$value["CustomerID"];
    }
    header("location: menu.php");
}
?>
</body>
</html>