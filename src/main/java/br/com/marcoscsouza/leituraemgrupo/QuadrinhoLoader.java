package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.service.QuadrinhoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class QuadrinhoLoader implements ApplicationRunner {

    @Autowired
    private QuadrinhoService quadrinhoService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        for (int i = 0; i < 10; i++) {

            Quadrinho quadrinho = new Quadrinho(
                    1990,
                    "Berserk",
                    26.99F,
                    3,
                    false,
                    "Kentarou Miura");

            quadrinhoService.incluir(quadrinho);
            System.out.println("Cadastrado com sucesso!!" + quadrinho.toString());
        }
    }
}
