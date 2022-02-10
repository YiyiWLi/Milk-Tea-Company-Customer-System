<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
    <style>
    #body {background-color: linen;}
    h1   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif;}
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
    <h1>Welcome back!</h1>
    <form action="login_data.php" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" name="first_name">
        <br>
        <br>
        <label for="email">Email:</label>
        <input type="text" name="email">
        <br>
        <br>
        <input type="submit" value="Login">
        <br>
        <p><a href="index.php">Go back</a></p>
    </form>



</body>
</html>