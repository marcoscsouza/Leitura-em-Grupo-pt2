package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class UsuarioService {

    public Usuario autenticar(Usuario usuario) {
        return usuarioRepository.autenticacao(usuario.getEmail(), usuario.getSenha());
    }
    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario incluir(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }

    public void excluir(Integer key) {
        usuarioRepository.deleteById(key);
    }

    public Collection<Usuario> obterLista() {
        return (Collection<Usuario>) usuarioRepository.findAll();
    }

}
