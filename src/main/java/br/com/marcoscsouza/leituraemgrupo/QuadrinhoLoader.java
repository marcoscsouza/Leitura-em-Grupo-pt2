package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.service.QuadrinhoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@Component
public class QuadrinhoLoader implements ApplicationRunner {

    @Autowired
    private QuadrinhoService quadrinhoService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        try {
            String arq = "quadrinhos.txt";
            try {
                FileReader arqLeitura = new FileReader(arq);
                BufferedReader leitor = new BufferedReader(arqLeitura);

                String linha = leitor.readLine();
                String[] campos = null;

                while (linha != null) {
                    campos = linha.split(";");
                    Quadrinho quadrinho = new Quadrinho(
                            Integer.parseInt(campos[0]),
                            campos[1],
                            Float.parseFloat(campos[2]),
                            Integer.parseInt(campos[3]),
                            Boolean.parseBoolean(campos[4]),
                            campos[5]);
                    quadrinhoService.incluir(quadrinho);
                    linha = leitor.readLine();
                }
                leitor.close();
                arqLeitura.close();

            } catch (IOException e) {
                System.out.println("Erro ao ler o arquivo: " + e.getMessage());
            }
        }
            finally {
                System.out.println("Leitura do arquivo finalizada!");
            }
    }
}
