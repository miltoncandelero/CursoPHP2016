<!--testscript .php?c=25-->
<?php
	function process ($c , $d = 25)
	{
	global $e;
	$retval = $c + $d - $_GET ['c'] - $e;
	return $retval ;
	}
$e = 10;
echo process (5);


$variable = $_GET['pokemon'];

echo "<br />".$variable;
?>