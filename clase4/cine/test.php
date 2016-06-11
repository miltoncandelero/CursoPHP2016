<?php
include("inc.includes.php");
$db = new MySQL($config["dbhost"],$config["dbuser"],$config["dbpass"],$config["db"]);

$peliculas = new Pelicula_Controller();
echo $peliculas->listadoPeliculas();
