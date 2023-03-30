package br.com.marcoscsouza.leituraemgrupo.model.service;

import br.com.marcoscsouza.leituraemgrupo.clients.IEnderecoClient;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Endereco;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EnderecoService {
    @Autowired
    private IEnderecoClient enderecoClient;

    public Endereco buscaCep(String cep) {

        return enderecoClient.buscaCep(cep);
    }
}