package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.repository.RevistaRepository;
import br.com.marcoscsouza.leituraemgrupo.model.service.RevistaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class RevistaController {

	private String msg;
	@Autowired
	private RevistaService revistaService;

	@GetMapping(value = "/revista")
	public String telaCadastro() {
		return "literatura/revista/cadastro";
	}

	@GetMapping(value = "/revista/lista")
	public String telaLista(Model model, @SessionAttribute("usuario") Usuario usuario) {

		model.addAttribute("revistas", revistaService.obterLista(usuario));

		model.addAttribute("mensagem", msg);

		msg = null;

		return "literatura/revista/lista";
	}

	@PostMapping(value = "/revista/incluir")
	public String incluir(Revista revista, @SessionAttribute("usuario") Usuario usuario) {

		revista.setUsuario(usuario);

		revistaService.incluir(revista);

		System.out.println("Cadastrado com sucesso!!" + revista.toString());

		msg = "revista " + revista.getTitulo() + " criado com sucesso!";

		return "redirect:/revista/lista";
	}

	@GetMapping(value = "/revista/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Revista revista = revistaService.obterPorId(id);

		revistaService.excluir(id);

		msg = "Exclusão do revista " + revista.getTitulo() + " feito com sucesso!";

		return "redirect:/revista/lista";
	}



}
