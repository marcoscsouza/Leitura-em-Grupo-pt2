package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Leitura;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.LeituraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class LeituraService {

    @Autowired
    private LeituraRepository leituraRepository;

    public Leitura incluir(Leitura leitura) {
        return leituraRepository.save(leitura);
    }

    public void excluir(Integer key) {
        leituraRepository.deleteById(key);
    }

    public Collection<Leitura> obterLista() {
        return (Collection<Leitura>) leituraRepository.findAll();
    }

    public Collection<Leitura> obterLista(Usuario usuario) {
        return (Collection<Leitura>) leituraRepository.obterLista(usuario.getId());
    }

    public Leitura obterPorId(Integer usuarioId) {
        return leituraRepository.findById(usuarioId).orElse(null);
    }


}
