<?php

/**
 * Que lindo que es visual code. GG WP
 * Pelicula controller (si entendi bien) se encarga de llamar al model y formatear lo que va a salir en pantalla.
 */
class PeliculaController
{
    
    
    
        function PeliculasPorGenero()
    {
         $oPeliculaModel = new PeliculaModel();
        $ListaPeliculas = $oPeliculaModel->PeliculasPorGenero();
        
        //ge_nombre SUMA
        
        $tpl = New TemplatePower("./templates/contarPeliculasGenero.html");
        $tpl->prepare();
        $tpl->gotoBlock("_ROOT");
        foreach ($ListaPeliculas as $Peli) {
            $tpl->newBlock("listapeliculas");
            $tpl->assign("GeneroPelicula",$Peli["ge_nombre"]);
            $tpl->assign("CantidadPelicula",$Peli["SUMA"]);
            
        }
        return $tpl->getOutputContent();
        
    }
    
    public function PeliculasPorDirector()
    {
        $oPeliculaModel = new PeliculaModel();
        $ListaPeliculas = $oPeliculaModel->PeliculasPorDirector();
        
        $tpl = New TemplatePower("./templates/listadoPeliculasDirector.html");
        $tpl->prepare();
        $tpl->gotoBlock("_ROOT");
        foreach ($ListaPeliculas as $Peli) {
            $tpl->newBlock("listapeliculas");
            $tpl->assign("NombrePelicula",$Peli["pe_nombre"]);
            $tpl->assign("DirectorPelicula",$Peli["di_nombreArtistico"]);
            
        }
        return($tpl->getOutputContent());
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
            
        }
        return($tpl->getOutputContent());
    }

    
}
