package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class UsuarioService {
    @Autowired
    private UsuarioRepository usuarioRepository;

    public boolean incluir(Usuario usuario) {
        return usuarioRepository.incluir(usuario);
    }

    public Usuario excluir(Integer key) {
        return usuarioRepository.excluir(key);
    }

    public Collection<Usuario> obterLista() {
        return usuarioRepository.obterLista();
    }

}
