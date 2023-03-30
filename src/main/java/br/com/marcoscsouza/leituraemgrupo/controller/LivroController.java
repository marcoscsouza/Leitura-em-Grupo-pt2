package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;
import br.com.marcoscsouza.leituraemgrupo.model.service.LivroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class LivroController {

	private String msg;
	@Autowired
	private LivroService livroService;

	@GetMapping(value = "/livro")
	public String telaCadastro() {
		return "literatura/livro/cadastro";
	}

	@GetMapping(value = "/livro/lista")
	public String telaLista(Model model, @SessionAttribute("usuario") Usuario usuario) {
		model.addAttribute("livros", livroService.obterLista(usuario));
		model.addAttribute("mensagem", msg);
		msg = null;
		return "literatura/livro/lista";
	}

	@PostMapping(value = "/livro/incluir")
	public String incluir(Livro livro, @SessionAttribute("usuario") Usuario usuario) {
		livro.setUsuario(usuario);
		livroService.incluir(livro);
		msg = "livro " + livro.getTitulo() + " criado com sucesso!";

		return "redirect:/livro/lista";
	}

	@GetMapping(value = "/livro/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		Livro livro = livroService.obterPorId(id);

		try {
			livroService.excluir(id);
			msg = "Exclusão do livro " + livro.getTitulo() + " feito com sucesso!";
		} catch (Exception e) {
			msg = "Não foi possível excluir o livro!"+ livro.getTitulo();
			return "redirect:/livro/lista";

		}

		return "redirect:/livro/lista";
	}
}
