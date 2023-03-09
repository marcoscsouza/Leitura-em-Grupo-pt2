package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.service.GrupoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import br.com.marcoscsouza.leituraemgrupo.model.repository.GrupoRepository;

@Controller
public class GrupoController {

	private String msg;

	@Autowired
	private GrupoService grupoService;

	@GetMapping(value = "/grupo")
	public String telaCadastro() {
		return "grupo/cadastro";
	}

	@GetMapping(value = "/grupo/lista")
	public String telaLista(Model model) {
		
		model.addAttribute("grupos", grupoService.obterLista());
		
		model.addAttribute("mensagem", msg);
		msg = null;
		
		return "grupo/lista";
	}

	@PostMapping(value = "/grupo/incluir")
	public String incluir(Grupo grupo) {
		System.out.println("Cadastrado com sucesso!!" + grupo.toString());

		msg = "grupo do " + grupo.getNomeResponsavel() + " criado com sucesso!";

		grupoService.incluir(grupo);

		return "redirect:/grupo/lista";
	}
	
	@GetMapping(value = "/grupo/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Grupo grupo = grupoService.excluir(id);

		msg = "Exclusão do grupo do " + grupo.getNomeResponsavel() + " feito com sucesso!";

		return "redirect:/grupo/lista";
	}

}
