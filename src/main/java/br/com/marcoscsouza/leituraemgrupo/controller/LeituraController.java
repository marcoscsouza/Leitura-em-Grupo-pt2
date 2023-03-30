package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Leitura;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.service.GrupoService;
import br.com.marcoscsouza.leituraemgrupo.model.service.LeituraService;
import br.com.marcoscsouza.leituraemgrupo.model.service.LiteraturaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class LeituraController {
	private String msg;
	@Autowired
	private LeituraService leituraService;
	@Autowired
	private GrupoService grupoService;
	@Autowired
	private LiteraturaService literaturaService;

	@GetMapping(value = "/leitura")
	public String telaCadastro(Model model, @SessionAttribute("usuario") Usuario usuario) {

		model.addAttribute("grupos", grupoService.obterLista(usuario));

		model.addAttribute("literaturas", literaturaService.obterLista(usuario));


		return "leitura/cadastro";
	}
	@GetMapping(value = "/leitura/lista")
	public String telaLista(Model model, @SessionAttribute("usuario") Usuario usuario) {

		model.addAttribute("leituras", leituraService.obterLista(usuario));

		model.addAttribute("mensagem", msg);
		msg = null;

		return "leitura/lista";
	}

	@PostMapping(value = "/leitura/incluir")
	public String incluir(Leitura leitura, @SessionAttribute("usuario") Usuario usuario) {

		leitura.setUsuario(usuario);

		leituraService.incluir(leitura);

		System.out.println("grupo: " + leitura.getGrupo().getId());
		System.out.println("Literaturas: " + leitura.getLiteraturas());

		msg = "livro " + leitura.getDetalhes() + " criado com sucesso!";


		return "redirect:/leitura/lista";
	}

	@GetMapping(value = "/leitura/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Leitura Leitura = leituraService.obterPorId(id);

		try {
			leituraService.excluir(id);

			msg = "Exclusão do leitura " + Leitura.getDetalhes() + " feito com sucesso!";
		} catch (Exception e) {
			msg = "Não foi possível excluir o leitura " + Leitura.getDetalhes() ;
			return "redirect:/leitura/lista";
		}

		return "redirect:/leitura/lista";
	}

}
