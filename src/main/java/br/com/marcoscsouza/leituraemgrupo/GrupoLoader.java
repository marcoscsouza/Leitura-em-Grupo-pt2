package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import br.com.marcoscsouza.leituraemgrupo.model.service.GrupoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class GrupoLoader implements ApplicationRunner {

    @Autowired
    private GrupoService grupoService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        for (int i = 0; i < 10; i++) {

            Grupo grupo = new Grupo(
                    5,
                    "Marcos Cassiano",
                    true);

            grupoService.incluir(grupo);
            System.out.println("Cadastrado com sucesso!!" + grupo.toString());
        }
    }

}
