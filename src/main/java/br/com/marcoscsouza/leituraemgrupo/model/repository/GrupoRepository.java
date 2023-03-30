package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GrupoRepository extends CrudRepository<Grupo, Integer> {

    @Query("FROM Grupo g WHERE g.usuario.id = :idUsuario")
    List<Grupo> obterLista(Integer idUsuario, Sort sort);

}
