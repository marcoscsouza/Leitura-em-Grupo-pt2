package br.com.marcoscsouza.leituraemgrupo.model.test;

import java.util.ArrayList;
import java.util.List;

import br.com.marcoscsouza.leituraemgrupo.exceptions.GrupoInvalidoException;
import br.com.marcoscsouza.leituraemgrupo.exceptions.LiteraturaInvalidoException;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Leitura;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Literatura;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Quadrinho;
import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;

public class LeituraTest {

	public static void main(String[] args) {

		Livro lv1 = new Livro(2017, "O corvo e outros contos", 42.79f, "Horror", "Edgar Allan Poe", true);
		Quadrinho qd1 = new Quadrinho(2019, "Berserk Deluxe", 353.50f, 1, false, "Kentaro Miura");
		Revista rv1 = new Revista(2021, "PlayStation", 19.90f, "Europa", "Jogos", 285);

		List<Literatura> literaturas = new ArrayList<Literatura>();
		literaturas.add(lv1);
		literaturas.add(qd1);
		literaturas.add(rv1);
		List<Literatura> literaturas2 = new ArrayList<Literatura>();
		literaturas2.add(rv1);
		List<Literatura> literaturas3 = new ArrayList<Literatura>();

		Grupo gp1 = new Grupo(5, "Marcos", false);
		Grupo gp2 = new Grupo(2, "Alex", true);
		Grupo gp3 = new Grupo(0, "Alex", true);

		try {

			Leitura lt1 = new Leitura(gp1, literaturas);
			lt1.setDetalhes("Leitura para conhecer novas obras");
			lt1.setPresencial(true);

			System.out.println(lt1);
			lt1.imprimir();

		} catch (GrupoInvalidoException | LiteraturaInvalidoException e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

		System.out.println(" ");

		try {
			Leitura lt2 = new Leitura(gp2, literaturas2);
			lt2.setDetalhes("Leitura para aprender");
			lt2.setPresencial(true);

			lt2.imprimir();
		} catch (GrupoInvalidoException | LiteraturaInvalidoException e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

		System.out.println(" ");

		try {
			Leitura lt2 = new Leitura(gp1, literaturas3);
			lt2.setDetalhes("Leitura para aprender");
			lt2.setPresencial(true);

			lt2.imprimir();
		} catch (GrupoInvalidoException | LiteraturaInvalidoException e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

		System.out.println(" ");
		
		try {
			Leitura lt2 = new Leitura(gp1, null);
			lt2.setDetalhes("Leitura para aprender");
			lt2.setPresencial(true);

			lt2.imprimir();
		} catch (GrupoInvalidoException | LiteraturaInvalidoException e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

		System.out.println(" ");

		try {

			Leitura lt2 = new Leitura(null, literaturas);
			lt2.setDetalhes("Leitura para aprender");
			lt2.setPresencial(true);

			lt2.imprimir();
		} catch (GrupoInvalidoException | LiteraturaInvalidoException e) {
			System.out.println("[ERROR] " + e.getMessage());
		}

		System.out.println(" ");

		try {

			Leitura lt2 = new Leitura(gp3, literaturas);
			lt2.setDetalhes("Leitura para aprender");
			lt2.setPresencial(true);

			lt2.imprimir();
		} catch (GrupoInvalidoException | LiteraturaInvalidoException e) {
			System.out.println("[ERROR] " + e.getMessage());
		} finally {
			System.out.println("Aplicação finalizada!");
		}
		

	}

}
