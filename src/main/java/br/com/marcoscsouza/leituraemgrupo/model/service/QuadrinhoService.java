package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.repository.QuadrinhoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class QuadrinhoService {

    @Autowired
    private QuadrinhoRepository quadrinhoRepository;

    public boolean incluir(Quadrinho quadrinho) {
        return quadrinhoRepository.incluir(quadrinho);
    }

    public Quadrinho excluir(Integer key) {
        return quadrinhoRepository.excluir(key);
    }

    public Collection<Quadrinho> obterLista() {
        return quadrinhoRepository.obterLista();
    }
}
