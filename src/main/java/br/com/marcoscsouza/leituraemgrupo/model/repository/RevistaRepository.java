package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RevistaRepository extends CrudRepository<Revista, Integer> {

    @Query("from Revista r where r.usuario.id = :idUsuario")
    Iterable<Revista> obterLista(Integer idUsuario, Sort sort);

}
