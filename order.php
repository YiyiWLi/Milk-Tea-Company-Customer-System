<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
    <style>
    #body {background-color: linen;}
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
<br>

<?php
echo("<h2>Thanks for your purchase!</h2>");
# Set up parameters to connect to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "MilkteaCompany";                         # database we want to access

# Create connection to database
$conn = mysqli_connect($servername, $username, $password, $dbname);

# Check the connection was successful
if (!$conn) {
	die(mysqli_connect_error());
}

# SQL query to run       # enter sql code here
$sql = <<< SQL
CALL Name_Price("{$_POST["drinks"]}");
SQL;

# Send SQL query to the database
$result = mysqli_query($conn, $sql);


# Fetch results from the SQL query
# OPTIONAL: MYSQLI_ASSOC setting
# Without this setting, the fields numbered. The first field is [0], the second is [1], etc.
# With this setting, the fields are named. First name is ["First_Name"], etc.
$data = mysqli_fetch_all($result, MYSQLI_ASSOC);

# Loop through query results row-by-row
# Each row will be stored in the $row variable
foreach ($data as $key => $value) {
	echo("<h3>Total: {$value["Price_Tax"]}$</h3>");
	echo("<h3>Your {$_POST["drinks"]} with {$_POST["sugar"]} sugar and {$_POST["ice"]} will be ready soon!</h3>");# change the field names
}
?>
<p><a href="menu.php">Go back</a> to menu page.</p>
</body>
</html>