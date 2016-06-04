<?php

function insertarActor($nombre, $apellido, $dni, $mail, $nombreArtistico) {
    global $db;
    $artistaSQL = "insert into artista (ar_nombre ,ar_apellido, ar_dni, ar_mail) values ('".$nombre."','".$apellido."',".$dni.",'".$mail."')";
    echo $artistaSQL . "<br>";
    $artId = $db->insert($artistaSQL);
    
    if ($artId){
        $actorSQL = "insert into actor (id_artista ,ac_nombreArtistico) values (".$artId.",'".$nombreArtistico."')";
        $actId = $db->insert($actorSQL);
        if ($actId){
            return "Actor agregado: ".$actId;
        }else {
            return "Explosito todo al agregar al actor.";
        }
        
        
    } else {
        return "Fallo catastrofico al agregar al artista.";
    }
}

function peliculasPorGenero() {

}

function peliculasPorDirector() {

}

function eliminarPelicula($idPelicula) {

}

function cambiarGenero($nombrePelicula, $generoActual, $generoNuevo) {

}
