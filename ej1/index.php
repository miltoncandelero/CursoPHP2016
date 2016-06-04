<?php
$string = "Curso de Desarrollo Web ";
$a = false;
$b = false;
$c = true;
if($a) {
if($b && !$c) {
echo "PHP , MYSQL Y MVC";
} else if (! $b && !$c) {
echo " Curso Optativo ";
}
} else {
if (! $b) {
if (! $a && (! $b && $c)) {
echo " Curso de Desarrollo Web";
} else {
echo " Cupo Limitado ";
}
} else {
echo " Sin cupos .";
}
}
?>