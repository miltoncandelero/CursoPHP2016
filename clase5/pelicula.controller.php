<?php

class PeliculaController {

  var $messages = null;

  public function AgregarPelicula()
  {
      //de aca saco directamente del $_POST? :S
      $oPeliculaModel = new PeliculaModel();
      //AgregarPelicula($id_genero,$id_director,$pe_nombre,$pe_duracion,$pe_fechaEstreno)
      $result = $oPeliculaModel->AgregarPelicula($_POST["genero"],$_POST["director"],$_POST["nombrePelicula"],$_POST["duracion"],$_POST["fechaEstreno"]);
              global $messages;

      if (is_numeric($result)) {
          $messages = "Pelicula agregada con id ".$result;
      }else {
          $messages = "Fatal Error";
      }
                return $this->ListarPeliculas();

  }
    
    public function AltaPelicula()
    {
        $oPeliculaModel = new PeliculaModel();
        $tpl = New TemplatePower("./templates/altaPelicula.html");
        $tpl->prepare();
        $tpl->gotoBlock("_ROOT");
        $Gens = $oPeliculaModel->ListarGeneros();
        foreach ($Gens as $Gen) {
            $tpl->newBlock("generoblock");
            $tpl->assign("ge_key",$Gen["id_genero"]);
            $tpl->assign("genero",$Gen["ge_nombre"]);
        }

        $tpl->gotoBlock("_ROOT");
        $Dirs = $oPeliculaModel->ListarDirectores();
        foreach ($Dirs as $Dir) {
            $tpl->newBlock("directorblock");
            $tpl->assign("di_key",$Dir["id_director"]);
            $tpl->assign("director",$Dir["di_nombreArtistico"]);
        }

        return $tpl->getOutputContent();
    }

    
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
        global $messages;
        $tpl->assign("messagestr",$messages);
        $messages ="";
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
