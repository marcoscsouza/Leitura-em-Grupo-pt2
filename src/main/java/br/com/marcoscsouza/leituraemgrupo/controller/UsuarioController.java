package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Endereco;
import br.com.marcoscsouza.leituraemgrupo.model.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
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

	@Autowired
	private UsuarioService usuarioService;


	@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	public String TelaCadastro() {

		return "usuario/cadastro";
	}

	@GetMapping(value = "/usuario/lista")
	public String telaLista(Model model) {


		model.addAttribute("usuarios", usuarioService.obterLista());

		model.addAttribute("mensagem", msg);
		msg = null;

		return "usuario/lista";
	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario, Endereco endereco){

		usuario.setEndereco(endereco);

		System.out.println("bairro: " + usuario.getEndereco().getBairro());


		System.out.println("Cadastrado com sucesso!!" + usuario.toString());

		msg = "usuario " + usuario.getNome() + " criado com sucesso!";

		usuarioService.incluir(usuario);

		return "redirect:/";
	}

	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		usuarioService.excluir(id);

		msg = "Exclusão do usuario " + id + " criado com sucesso!";

		return "redirect:/usuario/lista";
	}

}
