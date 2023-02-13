package br.com.marcoscsouza.leituraemgrupo.model.domain;

import br.com.marcoscsouza.leituraemgrupo.auxiliar.Constante;
import br.com.marcoscsouza.leituraemgrupo.exceptions.RevistaInvalidoExceptions;

public class Revista extends Literatura {
	
	private String instituto;
	private String categoria;
	private int edicao;
	
	public Revista(int anoPublicado, String titulo, float valor, String instituto, String categoria, int edicao) {
		super(anoPublicado, titulo, valor);
		this.instituto = instituto;
		this.categoria = categoria;
		this.edicao = edicao;
	}

	@Override
	public String calcularRaridade() throws RevistaInvalidoExceptions {
		if (getValor() == 0) {
			throw new RevistaInvalidoExceptions("Valor da revista inválido!");
		}
		if (edicao < 1) {
			throw new RevistaInvalidoExceptions("Edição da revista inválido!");
		}
		if (getAnoPublicado() == 0) {
			throw new RevistaInvalidoExceptions("Ano da publicação da revista inválido!");
		}
		
		int valorAno = Constante.ANO_ATUAL - getAnoPublicado();
		float valorEstimado = valorAno + getValor() - edicao;
		if (valorEstimado > Constante.VALOR_REVISTA) {
			return Constante.RARO;
		}else {
			return Constante.COMUM;
		}
	}

	@Override
	public String toString() {
		
		StringBuilder sb = new StringBuilder();
		sb.append(super.toString());
		sb.append(";");
		sb.append(instituto);
		sb.append(";");
		sb.append(categoria);
		sb.append(";");
		sb.append(edicao);
		
		return sb.toString();
	}

	public String getInstituto() {
		return instituto;
	}

	public void setInstituto(String instituto) {
		this.instituto = instituto;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public int getEdicao() {
		return edicao;
	}

	public void setEdicao(int edicao) {
		this.edicao = edicao;
	}
	
	

}
