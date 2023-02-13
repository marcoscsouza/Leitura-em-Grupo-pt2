package br.com.marcoscsouza.leituraemgrupo.model.domain;

import br.com.marcoscsouza.leituraemgrupo.auxiliar.Constante;

public class Grupo {
	
	private int integrantes; 
	private String nomeResponsavel;
	private boolean ehEstudo;
	
	public Grupo(int integrantes, String nomeResponsavel, boolean ehEstudo) {
		this.integrantes = integrantes;
		this.nomeResponsavel = nomeResponsavel;
		this.ehEstudo = ehEstudo;
	}

	public int getIntegrantes() {
		return integrantes;
	}

	public String getNomeResponsavel() {
		return nomeResponsavel;
	}

	public boolean isEhEstudo() {
		return ehEstudo;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(integrantes);
		sb.append(";");
		sb.append(nomeResponsavel);
		sb.append(";");
		sb.append(ehEstudo ? Constante.ESTUDO : Constante.HOBBIE );
		return sb.toString();
	}
	
}
