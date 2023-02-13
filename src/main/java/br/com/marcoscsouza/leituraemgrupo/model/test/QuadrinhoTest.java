package br.com.marcoscsouza.leituraemgrupo.model.test;

import br.com.marcoscsouza.leituraemgrupo.exceptions.QuadrinhoInvalidoExceptions;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;

public class QuadrinhoTest {

	public static void main(String[] args) {


		Quadrinho qd1 = new Quadrinho(2019, "Berserk Deluxe", 353.50f, 1, false, "Kentaro Miura");
		Quadrinho qd2 = new Quadrinho(2017, "Shingeki no kyojin", 17.60f, 16, true, "Hajime Isayama");
		Quadrinho qd3 = new Quadrinho(2021, "Spawn Compendium", 52.96f, 0, true, "Todd McFarlane");
		Quadrinho qd4 = new Quadrinho(2021, "Spawn Compendium", 0f, 1, true, "Todd McFarlane");
		
		try {
			System.out.println(qd1.calcularRaridade());
			System.out.println(qd1);
		} catch (QuadrinhoInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(qd2.calcularRaridade());
			System.out.println(qd2);
		} catch (QuadrinhoInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		try {
			System.out.println(qd3.calcularRaridade());
			System.out.println(qd3);
		} catch (QuadrinhoInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}
		
		try {
			System.out.println(qd4.calcularRaridade());
			System.out.println(qd4);
		} catch (QuadrinhoInvalidoExceptions e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

	}

}
