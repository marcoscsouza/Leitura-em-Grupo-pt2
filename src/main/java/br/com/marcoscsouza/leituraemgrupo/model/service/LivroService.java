package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.LivroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class LivroService {

    @Autowired
    private LivroRepository livroRepository;

    public Livro incluir(Livro livro) {
        return livroRepository.save(livro);
    }

    public void excluir(Integer key) {
        livroRepository.deleteById(key);
    }

    public Collection<Livro> obterLista() {
        return (Collection<Livro>) livroRepository.findAll();
    }

    public Collection<Livro> obterLista(Usuario usuario) {
        return (Collection<Livro>) livroRepository.obterLista(usuario.getId());
    }

    public Livro obterPorId(Integer usuarioId) {
        return livroRepository.findById(usuarioId).orElse(null);
    }

}
