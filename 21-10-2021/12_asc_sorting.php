<?php
    $colors = array("black", "white", "pink");
    sort($colors);

    $clength = count($colors);
    for($x = 0; $x < $clength; $x++) {
    echo $colors[$x];
    echo "<br>";
    }
?>