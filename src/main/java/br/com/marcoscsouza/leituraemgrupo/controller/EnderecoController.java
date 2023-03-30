package br.com.marcoscsouza.leituraemgrupo.controller;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Endereco;
import br.com.marcoscsouza.leituraemgrupo.model.service.EnderecoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EnderecoController {

    @Autowired
    private EnderecoService enderecoService;

    @PostMapping(value = "/cep")
    public String buscaCep(@RequestParam String cep, Model model) {

        model.addAttribute("endereco", enderecoService.buscaCep(cep));

        return "usuario/cadastro";
    }
}
