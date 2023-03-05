package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class QuadrinhoRepository {

    private static Integer id = 1;

    private static Map<Integer, Quadrinho> mapaQuadrinho = new HashMap<Integer, Quadrinho>();

    public static boolean incluir(Quadrinho quadrinho) {

        quadrinho.setId(id++);

        try {
            mapaQuadrinho.put(quadrinho.getId(), quadrinho);
            return true;
        } catch (Exception e) {
            return false;
        }

    }

    public static Quadrinho excluir(Integer key) {
        return mapaQuadrinho.remove(key);
    }

    public static Collection<Quadrinho> obterLista() {
        return mapaQuadrinho.values();

    }

	

}
