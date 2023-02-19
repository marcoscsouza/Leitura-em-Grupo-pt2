package br.com.marcoscsouza.leituraemgrupo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.repository.LivroRepository;

@Controller
public class LivroController {

	private String msg;

	@GetMapping(value = "/livro")
	public String telaCadastro() {
		return "literatura/livro/cadastro";
	}

	@GetMapping(value = "/livro/lista")
	public String telaLista(Model model) {

		model.addAttribute("livros", LivroRepository.obterLista());

		model.addAttribute("mensagem", msg);
		msg = null;

		return "literatura/livro/lista";
	}

	@PostMapping(value = "/livro/incluir")
	public String incluir(Livro livro) {
		System.out.println("Cadastrado com sucesso!!" + livro.toString());

		msg = "livro " + livro.getTitulo() + " criado com sucesso!";

		LivroRepository.incluir(livro);

		return "redirect:/livro/lista";
	}

	@GetMapping(value = "/livro/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Livro livro = LivroRepository.excluir(id);

		msg = "Exclusão do livro " + livro.getTitulo() + " feito com sucesso!";

		return "redirect:/livro/lista";
	}

}
