package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;
import br.com.marcoscsouza.leituraemgrupo.model.repository.RevistaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class RevistaService {
    @Autowired
    private RevistaRepository revistaRepository;

    public boolean incluir(Revista revista) {
        return revistaRepository.incluir(revista);
    }

    public Revista excluir(Integer key) {
        return revistaRepository.excluir(key);
    }

    public Collection<Revista> obterLista() {
        return revistaRepository.obterLista();
    }

}
