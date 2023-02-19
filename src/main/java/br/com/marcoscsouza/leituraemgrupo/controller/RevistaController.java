package br.com.marcoscsouza.leituraemgrupo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RevistaController {

	@GetMapping(value = "/revista")
	public String telaCadastro() {
		return "literatura/revista/cadastro";
	}

	@GetMapping(value = "/revista/lista")
	public String telaLista() {
		return "literatura/revista/lista";
	}

}
