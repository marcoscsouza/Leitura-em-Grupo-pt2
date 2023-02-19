package br.com.marcoscsouza.leituraemgrupo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.UsuarioRepository;

@Controller
public class UsuarioController {

	private String msg;

	@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	public String TelaCadastro() {

		return "usuario/cadastro";
	}

	@GetMapping(value = "/usuario/lista")
	public String telaLista(Model model) {

		model.addAttribute("usuarios", UsuarioRepository.obterLista());

		model.addAttribute("mensagem", msg);
		msg = null;

		return "usuario/lista";
	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
		System.out.println("Cadastrado com sucesso!!" + usuario.toString());

		msg = "usuario " + usuario.getNome() + " criado com sucesso!";

		UsuarioRepository.incluir(usuario);

		return "redirect:/";
	}

	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Usuario usuario = UsuarioRepository.excluir(id);

		msg = "Exclusão do usuario " + usuario.getNome() + " criado com sucesso!";

		return "redirect:/usuario/lista";
	}

}
