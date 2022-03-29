<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style.css" type="text/css" rel="stylesheet">
    <title>mfdlgmdf</title>
</head>
<body>
    
<a class="l" href="ndex.php">zurück zum Shop</a>






<?php

$artnr = $_GET['artnr'];
include('db.php');
$sql = "SELECT * FROM artikel WHERE Artikelnummer = '$artnr'";
$res = mysqli_query($con, $sql);
$product = mysqli_fetch_assoc($res);
echo '<a href="product.php?artnr='.$product['Artikelnummer'].'"><div class="produkt_design"><h2>'.$product['Name'].'</h2>
<img src="img/'.$product['Thumb'].'">
<p>'.$product['Beschreibung'].'</p>
<div class="preis">€'.$product['Preis'].'</div></div></a>';




?>


</body>
</html>
