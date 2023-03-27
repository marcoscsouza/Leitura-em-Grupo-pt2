package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Leitura;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LeituraRepository extends CrudRepository<Leitura, Integer> {

    @Query("from Leitura l where l.usuario.id = :idUsuario")
    Iterable<Leitura> obterLista(Integer idUsuario);
}
