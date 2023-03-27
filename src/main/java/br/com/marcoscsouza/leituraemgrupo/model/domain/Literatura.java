package br.com.marcoscsouza.leituraemgrupo.model.domain;

import br.com.marcoscsouza.leituraemgrupo.exceptions.LivroInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.exceptions.QuadrinhoInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.exceptions.RevistaInvalidoExceptions;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "tbliteratura")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Literatura {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private int anoPublicado;
	private String titulo;
	private float valor;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;

	@ManyToMany(mappedBy = "literaturas")
	private List<Leitura> leituras;

	public Literatura() {
	}
	public Literatura(int anoPublicado, String titulo, float valor) {
		this.anoPublicado = anoPublicado;
		this.titulo = titulo;
		this.valor = valor;
	}
	
	public abstract String calcularRaridade() throws LivroInvalidoExceptions, QuadrinhoInvalidoExceptions, RevistaInvalidoExceptions;

	@Override
	public String toString() {
		
		StringBuilder sb = new StringBuilder();
		sb.append(anoPublicado);
		sb.append(";");
		sb.append(titulo);
		sb.append(";");
		sb.append(valor);
		return sb.toString();
	}

	public int getAnoPublicado() {
		return anoPublicado;
	}

	public String getTitulo() {
		return titulo;
	}

	public float getValor() {
		return valor;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setAnoPublicado(int anoPublicado) {
		this.anoPublicado = anoPublicado;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public List<Leitura> getLeituras() {
		return leituras;
	}

	public void setLeituras(List<Leitura> leituras) {
		this.leituras = leituras;
	}


}
