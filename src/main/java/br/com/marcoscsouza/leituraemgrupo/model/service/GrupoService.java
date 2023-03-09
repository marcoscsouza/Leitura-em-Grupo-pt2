package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import br.com.marcoscsouza.leituraemgrupo.model.repository.GrupoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class GrupoService {

    @Autowired
    private GrupoRepository grupoRepository;

    public boolean incluir(Grupo grupo) {
        return grupoRepository.incluir(grupo);
    }

    public Grupo excluir(Integer key) {
        return grupoRepository.excluir(key);
    }

    public Collection<Grupo> obterLista() {
        return grupoRepository.obterLista();
    }

}
