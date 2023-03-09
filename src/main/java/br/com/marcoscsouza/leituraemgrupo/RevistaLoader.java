package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;
import br.com.marcoscsouza.leituraemgrupo.model.service.RevistaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class RevistaLoader implements ApplicationRunner {

    @Autowired
    private RevistaService revistaService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        for (int i = 0; i < 10; i++) {

            Revista revista = new Revista(
                    2023,
                    "Revista do Zé",
                    18.49F,
                    "Veja",
                    "Revista de variedades",
                    32
            );

            revistaService.incluir(revista);
            System.out.println("Cadastrado com sucesso!!" + revista.toString());
        }
    }
}
