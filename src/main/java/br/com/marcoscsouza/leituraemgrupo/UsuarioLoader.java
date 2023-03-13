package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@Order(1)
@Component
public class UsuarioLoader implements ApplicationRunner {

    @Autowired
    private UsuarioService usuarioService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        Usuario userAdmin = new Usuario("Adm", "123456", "adm@email.com");
        userAdmin.setNome("Administrador");
        userAdmin.setIdade(60);
        userAdmin.setTipo("Admin");
        userAdmin.setNivel("Avançado");
        usuarioService.incluir(userAdmin);

        System.out.println("ADM cadastrado com sucesso!!" + userAdmin.toString());



        try{
            String arq = "usuarios.txt";
            try{
                FileReader arqLeitura = new FileReader(arq);
                BufferedReader leitor = new BufferedReader(arqLeitura);

                String linha = leitor.readLine();
                String[] campos = null;

                while (linha != null){
                    campos = linha.split(";");
                    Usuario usuario = new Usuario(
                            campos[0],
                            campos[1],
                            campos[2]);
                    usuario.setIdade(Integer.parseInt(campos[3]));
                    usuario.setTipo(campos[4]);
                    usuario.setNivel(campos[5]);
                    usuarioService.incluir(usuario);
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
