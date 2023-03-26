package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.RevistaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class RevistaService {
    @Autowired
    private RevistaRepository revistaRepository;

    public Revista incluir(Revista revista) {
        return revistaRepository.save(revista);
    }

    public void excluir(Integer key) {
        revistaRepository.deleteById(key);
    }

    public Collection<Revista> obterLista() {
        return (Collection<Revista>) revistaRepository.findAll();
    }

    public Collection<Revista> obterLista(Usuario usuario){
        return (Collection<Revista>) revistaRepository.obterLista(usuario.getId());
    }

    public Revista obterPorId(Integer usuarioId){
        return revistaRepository.findById(usuarioId).orElse(null);
    }


}
