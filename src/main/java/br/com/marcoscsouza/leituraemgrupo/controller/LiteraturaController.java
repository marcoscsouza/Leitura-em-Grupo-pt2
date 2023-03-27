package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Literatura;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.service.LiteraturaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class LiteraturaController {

	private String msg;

	@Autowired
	private LiteraturaService literaturaService;



	@GetMapping(value = "/literatura/lista")
	public String telaLista(Model model, @SessionAttribute("usuario") Usuario usuario) {

//		livro.setUsuario(usuario);

		model.addAttribute("literaturas", literaturaService.obterLista(usuario));

		model.addAttribute("mensagem", msg);
		msg = null;

		return "literatura/lista";
	}


	@GetMapping(value = "/literatura/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Literatura literatura = literaturaService.obterPorId(id);

		literaturaService.excluir(id);

		msg = "Exclusão da literatura " + literatura.getTitulo() + " feito com sucesso!";

		return "redirect:/literatura/lista";
	}

}
