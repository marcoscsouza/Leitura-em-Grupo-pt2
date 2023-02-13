package br.com.marcoscsouza.leituraemgrupo.model.domain;

import br.com.marcoscsouza.leituraemgrupo.auxiliar.Constante;
import br.com.marcoscsouza.leituraemgrupo.exceptions.LivroInvalidoExceptions;

public class Livro extends Literatura {
	
	private String genero;
	private String autor;
	private boolean traduzido;

	public Livro(int anoPublicado, String titulo, float valor, String genero, String autor, boolean traduzido) {
		super(anoPublicado, titulo, valor);
		this.genero = genero;
		this.autor = autor;
		this.traduzido = traduzido;
	}

	@Override
	public String calcularRaridade() throws LivroInvalidoExceptions {
		
		if (getValor() == 0) {
			throw new LivroInvalidoExceptions("Valor do livro inválido!");
		}
		
		if (getAnoPublicado() == 0) {
			throw new LivroInvalidoExceptions("Ano de publicação do livro inválido!");
		}

		int valorTraduzido = traduzido ? 2 : 1 ;
		
		float valorEstimado = (Constante.ANO_ATUAL - getAnoPublicado()) + getValor() * valorTraduzido;
		
		if ( valorEstimado > Constante.VALOR_ALTO) {
			return Constante.MUITO_RARO;
		}else if( valorEstimado < Constante.VALOR_MEDIO) {
			return Constante.COMUM;
		}else {
			return Constante.RARO; 
		}
		
	}

	@Override
	public String toString() {
		
		StringBuilder sb = new StringBuilder();
		sb.append(super.toString());
		sb.append(";");
		sb.append(genero);
		sb.append(";");
		sb.append(autor);
		sb.append(";");
		sb.append(traduzido ? Constante.TRADUZIDO : Constante.NAO_TRADUZIDO);
		
		return sb.toString();
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public boolean isTraduzido() {
		return traduzido;
	}

	public void setTraduzido(boolean traduzido) {
		this.traduzido = traduzido;
	}

	
	

}
