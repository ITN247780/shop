<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href=" style.css" type="text/css" rel="stylesheet">
    <title>Lolos Shop</title>
</head>
<body>

<div class="nav">
    <h1>Chris Shop</h1>
</div>
<div class="content"></div>
    <div class="randomprod">
    <h1>Sponsered Products</h1>
    
    <?php
       include('db.php');
       $rand_prod = "SELECT * FROM artikel ORDER BY RAND() LIMIT 3";
       $prod_r = mysqli_query($con, $rand_prod);
      
        while($produkt = mysqli_fetch_assoc($prod_r)){
            echo '<a href="product.php?artnr='.$produkt['Artikelnummer'].'"><div class="produkt"><h2>'.$produkt['Name'].'</h2>
            <img src="img/'.$produkt['Thumb'].'">
            <div class="preis">€'.$produkt['Preis'].'</div></div></a>';
                    
        }
       
    ?>
    </div>
    <div class="allproducts">
    <h1>All Products</h1>
    <?php
       
       $prod_q = "SELECT * FROM artikel";
       $prod_re = mysqli_query($con, $prod_q);
      
        while($produkt_all = mysqli_fetch_assoc($prod_re)){
            echo '<a href="product.php?artnr='.$produkt_all['Artikelnummer'].'"><div class="produkt"><h2>'.$produkt_all['Name'].'</h2>
            <img src="img/'.$produkt_all['Thumb'].'">
            <div class="preis">€'.$produkt_all['Preis'].'</div></div></a>';
        
        }
       
    ?>
    </div>



</body>
</html>