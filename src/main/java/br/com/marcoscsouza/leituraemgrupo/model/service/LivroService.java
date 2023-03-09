package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.repository.LivroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class LivroService {

    @Autowired
    private LivroRepository livroRepository;

    public boolean incluir(Livro livro) {
        return livroRepository.incluir(livro);
    }

    public Livro excluir(Integer key) {
        return livroRepository.excluir(key);
    }

    public Collection<Livro> obterLista() {
        return livroRepository.obterLista();
    }

}
