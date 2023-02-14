package br.com.marcoscsouza.leituraemgrupo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.UsuarioRepository;

@Controller
public class UsuarioController {

	@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	public String TelaCadastro() {

		return "usuario/cadastro";
	}

	@GetMapping(value = "/usuario/lista")
	public String telaLista() {

		List<Usuario> lista = UsuarioRepository.obterLista();

		System.out.println("Quantidade de usuários = " + lista.size());

		for (Usuario user : lista) {
			System.out.printf("%s - %s\n", user.getNome(), user.getEmail());
		}

		return "usuario/lista";
	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
		System.out.println("Cadastrado com sucesso!!" + usuario.toString());

		UsuarioRepository.incluir(usuario);

		return "redirect:/usuario/lista";
	}

}
