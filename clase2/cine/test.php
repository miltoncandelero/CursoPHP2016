<?php
ini_set("display_errors",1);
error_reporting(E_ALL);


include("recursos/_php/class.mysqli.php");
include("libreriaModel.php");
$db = new MySQL("localhost", "root", "", "cine");

/*
var_dump($db);
die();
*/
/* DONE
insertarActor("nombre 2", "apellido 2", "2", "mail@mail.com", "actor 2");
insertarActor("nombre 3", "apellido 3", "3", "mail@mail.com", "actor 3");
insertarActor("nombre 4", "apellido 4", "4", "mail@mail.com", "actor 4");
insertarActor("nombre 7", "apellido 7", "8", "mail@mail.com", "actor 7");
insertarActor("nombre 8", "apellido 8", "8", "mail@mail.com", "actor 8");
*/

$poke = $db->select("select * from actor");
echo $poke[0];

?>


