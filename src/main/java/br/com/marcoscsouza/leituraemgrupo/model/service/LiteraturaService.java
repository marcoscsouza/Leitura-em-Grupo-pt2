package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Literatura;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.LiteraturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class LiteraturaService {

    @Autowired
    private LiteraturaRepository literaturaRepository;

    public void excluir(Integer key) {
        literaturaRepository.deleteById(key);
    }

    public Collection<Literatura> obterLista() {
        return (Collection<Literatura>) literaturaRepository.findAll();
    }

    public Collection<Literatura> obterLista(Usuario usuario) {
        return (Collection<Literatura>) literaturaRepository.obterLista(usuario.getId(),
                Sort.by(Sort.Direction.ASC, "titulo"));
    }

    public Literatura obterPorId(Integer usuarioId) {
        return literaturaRepository.findById(usuarioId).orElse(null);
    }

}
