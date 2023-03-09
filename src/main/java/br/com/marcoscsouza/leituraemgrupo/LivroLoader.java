package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.service.LivroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class LivroLoader implements ApplicationRunner {

    @Autowired
    private LivroService livroService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        for (int i = 0; i < 10; i++) {

            Livro livro = new Livro(
                    1962,
                    "Memórias de Adriano",
                    55.49F,
                    "Romance",
                    "Marguerite Yourcenar",
                    true);

            livroService.incluir(livro);
            System.out.println("Cadastrado com sucesso!!" + livro.toString());
        }
    }
}
