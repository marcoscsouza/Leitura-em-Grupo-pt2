package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuadrinhoRepository extends CrudRepository<Quadrinho, Integer> {

    @Query("from Quadrinho q where q.usuario.id = :idUsuario")
    Iterable<Quadrinho> obterLista(Integer idUsuario, Sort sort);

}
