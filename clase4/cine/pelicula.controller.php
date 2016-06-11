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
        $ListaPeliculas = $oPeliculaModel->ListarPeliculas();
        //pe_nombre, ge_nombre, di_nombreArtistico, pe_duracion, GROUP_CONCAT(actor.ac_nombreArtistico SEPARATOR ", ") as actores 
        $tpl = New TemplatePower("./templates/listadoPeliculas.html");
        $tpl->prepare();
        $tpl->gotoBlock("_ROOT");
        foreach ($ListaPeliculas as $Peli) {
            $tpl->newBlock("listapeliculas");
            $tpl->assign("NombrePelicula",$Peli["pe_nombre"]);
            $tpl->assign("GeneroPelicula",$Peli["ge_nombre"]);
            $tpl->assign("DirectorPelicula",$Peli["di_nombreArtistico"]);
            $tpl->assign("DuracionPelicula",$Peli["pe_duracion"]);
            $tpl->assign("ActoresPelicula",$Peli["actores"]);
            
            //$Peli->cosas locas;
        }
        return($tpl->getOutputContent());
    }

    
}
