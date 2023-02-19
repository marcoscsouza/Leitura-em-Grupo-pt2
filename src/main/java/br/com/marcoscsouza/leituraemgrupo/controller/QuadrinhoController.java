package br.com.marcoscsouza.leituraemgrupo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QuadrinhoController {

	@GetMapping(value = "/quadrinho")
	public String telaCadastro() {
		return "literatura/quadrinho/cadastro";
	}

	@GetMapping(value = "/quadrinho/lista")
	public String telaLista() {
		return "literatura/quadrinho/lista";
	}

}
