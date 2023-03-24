package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.service.LivroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@Order(3)
@Component
public class LivroLoader implements ApplicationRunner {

    @Autowired
    private LivroService livroService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        try{

            String arq = "livros.txt";
            try{
                FileReader arqLeitura = new FileReader(arq);
                BufferedReader leitor = new BufferedReader(arqLeitura);

                String linha = leitor.readLine();
                String[] campos = null;

                while (linha != null){
                    campos = linha.split(";");
                    Livro livro = new Livro(
                            Integer.parseInt(campos[0]),
                            campos[1],
                            Float.parseFloat(campos[2]),
                            campos[3],
                            campos[4],
                            Boolean.parseBoolean(campos[5]));
                    livroService.incluir(livro);
                    linha = leitor.readLine();
                }
                leitor.close();
                arqLeitura.close();

            }catch (IOException e){
                System.out.println("Erro ao ler o arquivo: " + e.getMessage());
            }
        }finally {
            System.out.println("Leitura do arquivo finalizada!");
        }
    }
}
