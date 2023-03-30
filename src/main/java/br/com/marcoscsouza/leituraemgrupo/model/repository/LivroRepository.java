package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LivroRepository extends CrudRepository<Livro, Integer> {

    @Query("from Livro l where l.usuario.id = :idUsuario")
    Iterable<Livro> obterLista(Integer idUsuario, Sort sort);

}
