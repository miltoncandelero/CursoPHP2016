<?php
include("inc.includes.php");

$db = new MySQL($config["dbhost"],$config["dbuser"],$config["dbpass"],$config["db"]);

$o = new PeliculaController();

$o->PeliculasPorGenero();

$o->PeliculasPorDirector();

$o->ListarPeliculas();

//dump($db);
//Datos agregados para probar git.
die();
