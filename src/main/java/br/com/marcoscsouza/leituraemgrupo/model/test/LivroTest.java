package br.com.marcoscsouza.leituraemgrupo.model.test;

import br.com.marcoscsouza.leituraemgrupo.exceptions.LivroInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;

public class LivroTest {

	public static void main(String[] args) {


		Livro lv1 = new Livro(2017, "O corvo e outros contos", 42.79f, "Horror", "Edgar Allan Poe", true);
		Livro lv2 = new Livro(2014, "O chamado de Cthulhu e outros contos", 17.95f, "Horror", "H. P. Lovecraft", true);
		Livro lv3 = new Livro(0, "Head first! Java", 149.90f, "Didático", "Bert bates", false);
		Livro lv4 = new Livro(2014, "O chamado de Cthulhu e outros contos", 0f, "Horror", "H. P. Lovecraft", true);
		
		try {
			System.out.println(lv1.calcularRaridade());
			System.out.println(lv1);
		} catch (LivroInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(lv2.calcularRaridade());
			System.out.println(lv2);
		} catch (LivroInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(lv3.calcularRaridade());
			System.out.println(lv3);
		} catch (LivroInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(lv4.calcularRaridade());
			System.out.println(lv4);
		} catch (LivroInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		

	}

}
