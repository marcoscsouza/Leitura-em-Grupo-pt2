package br.com.marcoscsouza.leituraemgrupo.model.domain;

import br.com.marcoscsouza.leituraemgrupo.auxiliar.Constante;
import br.com.marcoscsouza.leituraemgrupo.exceptions.QuadrinhoInvalidoExceptions;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbquadrinho")
public class Quadrinho extends Literatura {
	
	private int volume;
	private boolean finalizado;
	private String ilustrador;

	public Quadrinho() {
	}
	
	public Quadrinho(int anoPublicado, String titulo, float valor, int volume, boolean finalizado, String ilustrador) {
		super(anoPublicado, titulo, valor);
		this.volume = volume;
		this.finalizado = finalizado;
		this.ilustrador = ilustrador;
	}

	@Override
	public String calcularRaridade() throws QuadrinhoInvalidoExceptions {
		
		if (getValor() == 0) {
			throw new QuadrinhoInvalidoExceptions("Valor do quadrinho inválido");
		}
		
		if (volume < 1) {
			throw new QuadrinhoInvalidoExceptions("Volume do quadrinho inválido!");
		}

		int valorCompleto = finalizado ? 1 : 2 ;
		float valorEstimado = (Constante.ANO_ATUAL - getAnoPublicado() + getValor()) * valorCompleto - volume ;
		
		if (valorEstimado > Constante.VALOR_MEDIO) {
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
		sb.append(volume);
		sb.append(";");
		sb.append(finalizado ? Constante.FINALIZADO : Constante.DESENVOLVIMENTO);
		sb.append(";");
		sb.append(ilustrador);
		
		return sb.toString();
	}

	public int getVolume() {
		return volume;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}

	public boolean isFinalizado() {
		return finalizado;
	}

	public void setFinalizado(boolean finalizado) {
		this.finalizado = finalizado;
	}

	public String getIlustrador() {
		return ilustrador;
	}

	public void setIlustrador(String ilustrador) {
		this.ilustrador = ilustrador;
	}
	
	
	
	

}
