package br.com.marcoscsouza.leituraemgrupo.model.test;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;

public class GrupoTest {

	public static void main(String[] args) {


		Grupo gp1 = new Grupo(5, "Marcos", false);
		
		Grupo gp2 = new Grupo(2, "Alex", true);
		
		Grupo gp3 = new Grupo(0, "Alex", true);
		
		System.out.println(gp1);
		System.out.println(gp2);
		System.out.println(gp3);

	}

}
