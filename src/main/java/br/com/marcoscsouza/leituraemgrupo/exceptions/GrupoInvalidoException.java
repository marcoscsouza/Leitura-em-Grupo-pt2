package br.com.marcoscsouza.leituraemgrupo.exceptions;

public class GrupoInvalidoException extends Exception {

	private static final long serialVersionUID = 1L;

	public GrupoInvalidoException(String mensagem) {
		super(mensagem);
	}
}
