<?php
	echo "de a 1 <br />";
	for ($i=0; $i < 11; $i++)
	{
		echo $i*2;
		echo "<br />";
	}
	
	echo "<br /><br /> ahora de a 2.<br />";
	
	for ($i=0; $i < 21; $i=$i+2)
	{
		echo $i;
		echo "<br />";
	}
	
	echo "<br /><br />while<br />";
	$i=0;
	while ($i < 11)
	{
		echo $i*2;
		echo "<br />";
		$i++;
	}
	
	echo "<br /><br />dowhile<br />";
	$i=0;
	do
	{
		echo $i*2;
		echo "<br />";
		$i++;
	}while ($i < 11)
?>