<?php
	 function dump($data){
		 echo "<PRE>";
		 var_dump($data);
		 echo "</PRE>";
	 }
	 
	 //Dibujar cualquier tabla.
	 function tabledraw($sTable){
		 foreach ($sTable as $Fila) {    
			 foreach ($Fila as $Celda) {
    			echo $Celda. "\t|\t";
			 }
			 echo "<br>";
		}
	 }
		
	//Dibujar cualquier tabla.
	 function tabledrawhtml($sTable){
		 echo "<br><table style=\"border: 1px solid black; border-collapse: collapse;\">";
		 foreach ($sTable as $Fila) {   
			 echo "<tr style=\"border: 1px solid black;\">"; 
			 foreach ($Fila as $Celda) {
    			echo "<td style=\"border: 1px solid black;\">".$Celda. "</td>";
			 }
			 echo "</tr>";
		}
		echo "</table>";
	 }