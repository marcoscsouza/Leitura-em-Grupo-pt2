package br.com.marcoscsouza.leituraemgrupo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Usuario;

@Controller
public class UsuarioController {
	
	
	@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	public String TelaCadastro() {
//		return "WEB-INF/jsp/usuario/cadastro.jsp";
		return "usuario/cadastro";
	}
	
	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
		System.out.println("Cadastrado com sucesso!!" + usuario.toString());
		return "redirect:/";
	}

}
