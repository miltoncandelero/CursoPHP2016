<?php

/**
 * Que lindo que es visual code. GG WP
 * Pelicula model (si entendi bien) se encarga de entrar a la DB.
 */
class PeliculaModel
{

    
    public function PeliculasPorGenero()
    {
        global $db;
        $retval = $db->select("SELECT pelicula.id_genero,genero.ge_nombre, count(*) as SUMA
                                FROM pelicula 
                                INNER JOIN genero ON pelicula.id_genero=genero.id_genero
                                GROUP BY pelicula.id_genero");
        return $retval;
    }
    
    public function PeliculasPorDirector()
    {
        global $db;
        /*$retval = $db->select("SELECT pelicula.id_director, apd.ar_nombre, count(*)
                                FROM pelicula 
                                INNER JOIN director pd ON pelicula.id_director= pd.id_director
                                inner join artista apd ON pd.id_artista = apd.id_artista
                                GROUP BY pelicula.id_director"); */
        
        $retval = $db->select("SELECT pelicula.id_director, apd.ar_nombre, pelicula.pe_nombre
                                FROM pelicula 
                                INNER JOIN director pd ON pelicula.id_director= pd.id_director
                                inner join artista apd ON pd.id_artista = apd.id_artista
                                order by 1");
        
        return $retval;
    }
    
    
    /*FUNCION SIN SANITIZAR. MAL YUYU*/
    public function EliminarPelicula($idPelicula)
    {
        global $db;
        $retval = $db->delete("Delete from pelicula where pelicula.id_pelicula =".$idPelicula);
        return $retval;
    }
    
    /*FUNCION SIN SANITIZAR. MAL YUYU*/
    public function CambiarGenero($idPelicula, $idGenero)
    {
        global $db;
        $retval = $db->update("update pelicula set id_genero=".$idGenero." where id_pelicula=".$idPelicula);
        return $retval;
    }
    
    public function ListarPeliculas()
    {
        global $db;
        $retval = $db->select('SELECT pe_nombre, ge_nombre, di_nombreArtistico, pe_duracion, GROUP_CONCAT(actor.ac_nombreArtistico SEPARATOR ", ") as actores from pelicula, pelicula_actor, director, genero, actor where pelicula.id_pelicula = pelicula_actor.id_pelicula && pelicula.id_director = director.id_director && pelicula.id_genero = genero.id_genero && pelicula_actor.id_actor = actor.id_actor group by pelicula_actor.id_pelicula');
        return $retval;
    }
}
