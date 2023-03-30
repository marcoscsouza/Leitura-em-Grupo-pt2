package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.service.QuadrinhoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class QuadrinhoController {

	private String msg;
	@Autowired
	private QuadrinhoService quadrinhoService;

	@GetMapping(value = "/quadrinho")
	public String telaCadastro() {
		return "literatura/quadrinho/cadastro";
	}

	@GetMapping(value = "/quadrinho/lista")
	public String telaLista(Model model, @SessionAttribute("usuario") Usuario usuario) {
		model.addAttribute("quadrinhos", quadrinhoService.obterLista(usuario));
		model.addAttribute("mensagem", msg);
		msg = null;
		return "literatura/quadrinho/lista";
	}

	@PostMapping(value = "/quadrinho/incluir")
	public String incluir(Quadrinho quadrinho, @SessionAttribute("usuario") Usuario usuario) {
		quadrinho.setUsuario(usuario);
		quadrinhoService.incluir(quadrinho);
		System.out.println("Cadastrado com sucesso!!" + quadrinho.toString());
		msg = "quadrinho " + quadrinho.getTitulo() + " criado com sucesso!";

		return "redirect:/quadrinho/lista";
	}

	@GetMapping(value = "/quadrinho/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		Quadrinho quadrinho = quadrinhoService.obterPorId(id);
		try {
			quadrinhoService.excluir(id);
			msg = "Exclusão do quadrinho " + quadrinho.getTitulo() + " feito com sucesso!";
		} catch (Exception e) {
			msg = "Não foi possível excluir o quadrinho!"+ quadrinho.getTitulo();
			return "redirect:/quadrinho/lista";

		}

		return "redirect:/quadrinho/lista";
	}
}
