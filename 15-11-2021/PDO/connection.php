<?php

try{

    $pdo=new PDO('mysql:host=localhost;dbname=admin_panel','root','');
    //echo "connected successfully.";
}
catch(PDOException $e){
    echo "connection failed.".$e->getMessage();
}



?>