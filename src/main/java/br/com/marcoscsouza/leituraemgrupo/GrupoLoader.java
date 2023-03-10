package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import br.com.marcoscsouza.leituraemgrupo.model.service.GrupoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@Component
public class GrupoLoader implements ApplicationRunner {

    @Autowired
    private GrupoService grupoService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        try {
            String arq = "grupos.txt";
            try {
                FileReader arqLeitura = new FileReader(arq);
                BufferedReader leitor = new BufferedReader(arqLeitura);

                String linha = leitor.readLine();
                String[] campos = null;

                while (linha != null) {
                    campos = linha.split(";");
                    Grupo grupo = new Grupo(
                            Integer.parseInt(campos[0]),
                            campos[1],
                            Boolean.parseBoolean(campos[2]));
                    grupoService.incluir(grupo);
                    linha = leitor.readLine();
                }
                leitor.close();
                arqLeitura.close();

            } catch (IOException e) {
                System.out.println("Erro ao ler o arquivo: " + e.getMessage());
            }
        } finally {
            System.out.println("Leitura do arquivo finalizada!");
        }

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
