package br.com.marcoscsouza.leituraemgrupo.model.test;

import br.com.marcoscsouza.leituraemgrupo.exceptions.RevistaInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;

public class RevistaTest {

	public static void main(String[] args) {


		Revista rv1 = new Revista(2021, "PlayStation",19.90f, "Europa", "Jogos", 285);
		Revista rv2 = new Revista(2002, "A imagem do 3º Reich", 28.90f, "Globo", "Historia", 1);
		Revista rv3 = new Revista(0, "Contigo: Big Brother Brasil 2018", 29.90f, "Perfil", "Atualidades", 74);
		Revista rv4 = new Revista(2021, "Contigo: Big Brother Brasil 2021", 0f, "Perfil", "Atualidades", 74);
		Revista rv5 = new Revista(2021, "Contigo: Big Brother Brasil 2022", 15.90f, "Perfil", "Atualidades", 0);
		
		try {
			System.out.println(rv1.calcularRaridade());
			System.out.println(rv1);
		} catch (RevistaInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(rv2.calcularRaridade());
			System.out.println(rv2);
		} catch (RevistaInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(rv3.calcularRaridade());
			System.out.println(rv3);
		} catch (RevistaInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(rv4.calcularRaridade());
			System.out.println(rv4);
		} catch (RevistaInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(rv5.calcularRaridade());
			System.out.println(rv5);
		} catch (RevistaInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

	}

}
