package br.com.marcoscsouza.leituraemgrupo.model.domain;

public class Usuario {
	
	private String nome;
	private String senha;
	private String email;
	private int idade;
	private String tipo;
	private String nivel;
	
	public Usuario() {
	}
	
	public Usuario(String email, String senha) {
		this();
		this.setEmail(email);
		this.setSenha(senha);
	}
	
	public Usuario(String nome, String senha, String email) {
		this(email,senha);
		this.nome = nome;
	}
	
	@Override
	public String toString() {
		return String.format(" O usuário %s das credenciais %s e %s, %d idade."
				+ " Gosta de ler %s e tem o nível %s de leitura.",
				nome,
				senha,
				email,
				idade, 
				tipo, 
				nivel);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNivel() {
		return nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
	
	
	
	
	
	
	

}
