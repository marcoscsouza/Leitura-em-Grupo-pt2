package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;
import br.com.marcoscsouza.leituraemgrupo.model.service.RevistaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@Component
public class RevistaLoader implements ApplicationRunner {

    @Autowired
    private RevistaService revistaService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        try{
            String arq = "revistas.txt";
            try{
                FileReader arqLeitura = new FileReader(arq);
                BufferedReader leitor = new BufferedReader(arqLeitura);

                String linha = leitor.readLine();
                String[] campos = null;

                while(linha != null){
                    campos = linha.split(";");
                    Revista revista = new Revista(
                            Integer.parseInt(campos[0]),
                            campos[1],
                            Float.parseFloat(campos[2]),
                            campos[3],
                            campos[4],
                            Integer.parseInt(campos[5]));
                    revistaService.incluir(revista);
                    linha = leitor.readLine();
                }
                leitor.close();
                arqLeitura.close();

            }catch(IOException e){
                System.out.println("Erro ao ler o arquivo: " + e.getMessage());
            }

        }finally {
            System.out.println("Leitura do arquivo finalizada!");
        }

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
