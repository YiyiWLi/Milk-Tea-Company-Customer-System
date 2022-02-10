<?php
session_start();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menu</title>
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
    <?php
    if (empty($_SESSION["first_name"])){
    echo("<h2>Please Login or Sign Up to get your amazing order!</h2>");
    ?>
    <p><a href="index.php">Go back</a></p>
    <?php
    }else{
    echo "<h2>Welcome to Dolphin Tea House, {$_SESSION['first_name']}!</h2>
        <h2>Nice to have you here!</h2>
        <h3>You have {$_SESSION['rewards']} reward points. Get free drink by collecting points.</h3>";
    ?>
    <p><a href="index.php">Go back</a></p>
    <br>
    <form action="order.php" method="post">
        <label for="drinks">Choose a drink:</label>
        <select name="drinks">
            <option value="Boba Milk Tea">Boba Milk Tea</option>
            <option value="Black Tea Macchiato">Black Tea Macchiato</option>
            <option value="Ice Cream Black Tea">Ice Cream Black Tea</option>
            <option value="Ice Cream Milk Tea">Ice Cream Milk Tea</option>
            <option value="Grapefruit Green Tea">Grapefruit Green Tea</option>
        </select>
        <br>
        <br>
        <label for="sugar">Sugar:</label>
        <select name="sugar">
            <option value="100%">100%</option>
            <option value="70%">70%</option>
            <option value="50%">50%</option>
            <option value="25%">25%</option>
            <option value="0%">0%</option>
        </select>
        &ensp;&ensp;&ensp;
        <label for="ice">Ice:</label>
        <select name="ice">
            <option value="Full Ice">Full Ice</option>
            <option value="Half Ice">Half Ice</option>
            <option value="Less Ice">Less Ice</option>
            <option value="No Ice">No Ice</option>
        </select>
        <br>
        <br>
        <input type="submit" value="Order Now">
    </form>
    <br>
    <br>
    <img src="Pictures/Boba_Milk_Tea.jpg" alt="Boba Milk Tea">
    <p>Boba Milk Tea  $5</p>
    <br>
    <img src="Pictures/Black_Tea_Macchiato.jpg" alt="Black Tea Macchiato">
    <p>Black Tea Macchiato  $6</p>
    <br>
    <img src="Pictures/Ice_Cream_Black_Tea.jpg" alt="Ice Cream Black Tea">
    <p>Ice Cream Black Tea  $4</p>
    <br>
    <img src="Pictures/Ice_Cream_Milk_Tea.jpg" alt="Ice Cream Milk Tea">
    <p>Ice Cream Milk Tea  $5</p>
    <br>
    <img src="Pictures/Grapefruit_Green_Tea.jpg" alt="Grapefruit Green Tea">
    <p>Grapefruit Green Tea  $4</p>
<?php
}
?>
</body>
</html>
