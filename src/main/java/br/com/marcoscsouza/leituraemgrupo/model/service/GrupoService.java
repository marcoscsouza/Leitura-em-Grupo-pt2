package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.GrupoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class GrupoService {

    @Autowired
    private GrupoRepository grupoRepository;

    public Grupo incluir(Grupo grupo) {
//        return grupoRepository.incluir(grupo);

        return grupoRepository.save(grupo);
    }

    public void excluir(Integer key) {
//        return grupoRepository.excluir(key);
        grupoRepository.deleteById(key);
    }

    public Collection<Grupo> obterLista() {
//        return grupoRepository.obterLista();
        return (Collection<Grupo>) grupoRepository.findAll();
    }

    public Collection<Grupo> obterLista(Usuario usuario) {
//        return grupoRepository.obterLista();
        return grupoRepository.obterLista(usuario.getId());
    }

}
