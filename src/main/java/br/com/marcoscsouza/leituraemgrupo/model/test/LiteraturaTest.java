package br.com.marcoscsouza.leituraemgrupo.model.test;

import br.com.marcoscsouza.leituraemgrupo.exceptions.LivroInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.exceptions.QuadrinhoInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.exceptions.RevistaInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;

public class LiteraturaTest {

	public static void main(String[] args) {


		Livro lv1 = new Livro(2017, "O corvo e outros contos", 42.79f, "Horror", "Edgar Allan Poe", true);
		
		Quadrinho qd1 = new Quadrinho(2019, "Berserk Deluxe", 353.50f, 1, false, "Kentaro Miura");
		
		Revista rv1 = new Revista(2021, "PlayStation",19.90f, "Europa", "Jogos", 285);
		
		try {
			System.out.println(lv1.calcularRaridade());
			System.out.println(lv1);
		} catch (LivroInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		
		try {
			System.out.println(qd1.calcularRaridade());
			System.out.println(qd1);
		} catch (QuadrinhoInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		
		try {
			System.out.println(rv1.calcularRaridade());
			System.out.println(rv1);
		} catch (RevistaInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

	}

}
