package br.com.marcoscsouza.leituraemgrupo.model.domain;

import br.com.marcoscsouza.leituraemgrupo.auxiliar.Constante;

import javax.persistence.*;


@Entity
@Table(name = "TGrupo")
public class Grupo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private int integrantes; 
	private String nomeResponsavel;
	private boolean ehEstudo;

	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;



	public Grupo() {
	}
	
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
	
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setIntegrantes(int integrantes) {
		this.integrantes = integrantes;
	}

	public void setNomeResponsavel(String nomeResponsavel) {
		this.nomeResponsavel = nomeResponsavel;
	}

	public void setEhEstudo(boolean ehEstudo) {
		this.ehEstudo = ehEstudo;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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
