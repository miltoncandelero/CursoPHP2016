<?php

/**
 * Que lindo que es visual code. GG WP
 * Pelicula controller (si entendi bien) se encarga de llamar al model y mostrar por pantalla!!!.
 */
class PeliculaController
{
    
        function PeliculasPorGenero()
    {
        $oPeliculaModel = new PeliculaModel();
        $retval = $oPeliculaModel->PeliculasPorGenero();
        tabledrawhtml($retval);
    }
    
    public function PeliculasPorDirector()
    {
        $oPeliculaModel = new PeliculaModel();
        $retval = $oPeliculaModel->PeliculasPorDirector();
        tabledrawhtml($retval);
    }
    
    
    /*FUNCION SIN SANITIZAR. MAL YUYU*/
    public function EliminarPelicula($idPelicula)
    {
        $oPeliculaModel = new PeliculaModel();
        $retval = $oPeliculaModel->EliminarPelicula($idPelicula);
        tabledrawhtml($retval);
    }
    
    /*FUNCION SIN SANITIZAR. MAL YUYU*/
    public function CambiarGenero($idPelicula, $idGenero)
    {
        $oPeliculaModel = new PeliculaModel();
        $retval = $oPeliculaModel->CambiarGenero($idPelicula, $idGenero);
        tabledrawhtml($retval);
    }
    
        public function ListarPeliculas()
    {
        $oPeliculaModel = new PeliculaModel();
        $retval = $oPeliculaModel->ListarPeliculas();
        tabledrawhtml($retval);
    }

    
}
