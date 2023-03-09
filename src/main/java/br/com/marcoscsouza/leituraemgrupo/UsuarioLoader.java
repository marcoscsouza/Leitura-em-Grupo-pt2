package br.com.marcoscsouza.leituraemgrupo;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class UsuarioLoader implements ApplicationRunner {

    @Autowired
    private UsuarioService usuarioService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        for (int i = 0; i < 10; i++) {


            Usuario usuario = new Usuario("Adm", "123456", "adm@adm.com");
            usuario.setNome("Administrador");
            usuario.setIdade(30);
            usuario.setTipo("Ficção");
            usuario.setNivel("Avançado");

            usuarioService.incluir(usuario);

            System.out.println("Cadastrado com sucesso!!" + usuario.toString());
        }
    }
}
