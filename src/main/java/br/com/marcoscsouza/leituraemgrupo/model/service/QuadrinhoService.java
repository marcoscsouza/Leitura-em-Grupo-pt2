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

    public Quadrinho incluir(Quadrinho quadrinho) {
        return quadrinhoRepository.save(quadrinho);
    }

    public void excluir(Integer key) {
        quadrinhoRepository.deleteById(key);
    }

    public Collection<Quadrinho> obterLista() {
        return (Collection<Quadrinho>) quadrinhoRepository.findAll();
    }

    public Quadrinho obterPorId(Integer usuarioId){
        return quadrinhoRepository.findById(usuarioId).orElse(null);
    }

}
