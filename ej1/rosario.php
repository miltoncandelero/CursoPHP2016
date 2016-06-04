<?php
define ('myvalue', "10");
$myarray [10] = " Santa Fe";
$myarray [] = " Parana ";
$myarray ['myvalue'] = " Rosario ";
$myarray [" Santa Fe"] = " Rosario ";
print "El valor es: ";
print $myarray ['myvalue']."\n";
echo "<br />" .  $myarray[3];
?>
