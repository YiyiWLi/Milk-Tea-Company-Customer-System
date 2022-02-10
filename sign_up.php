<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
</head>
<style>
    #body {background-color: linen;}
    h1   {text-align: center; color: black; font-family: Palatino, URW Palladio L, serif; margin-top:10%;}
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
    <h3>Join Us!</h3>
    <form action="sign_up_data.php" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" name="first_name">
        <br>
        <br>
        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name">
        <br>
        <br>
        <label for="email">Email:</label>
        <input type="text" name="email">
        <br>
        <br>
        <label for="phone">Phone:</label>
        <input type="text" name="phone">
        <br>
        <br>
        <input type="submit" value="Sign up">
        <br>
        <p><a href="index.php">Go back</a></p>
    </form>
</body>
</html>