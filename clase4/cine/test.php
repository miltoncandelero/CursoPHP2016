<?php
include("inc.includes.php");
$db = new MySQL($config["dbhost"],$config["dbuser"],$config["dbpass"],$config["db"]);


/*$oPeliculaController = new PeliculaController();
echo $oPeliculaController->ListarPeliculas();*/



$oPeliculaController = new PeliculaController();
echo $oPeliculaController->PeliculasPorDirector();


/*
$tpl =new TemplatePower("./templates/listadoPeliculas.html");
$tpl->prepare();
$tpl->gotoBlock("_ROOT");
$tpl->newBlock("listapeliculas");
$tpl->assign("NombrePelicula","YUGIOH");
echo $tpl->getOutputContent();
*/

