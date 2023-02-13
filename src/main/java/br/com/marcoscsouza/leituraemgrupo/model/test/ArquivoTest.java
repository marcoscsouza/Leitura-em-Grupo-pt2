package br.com.marcoscsouza.leituraemgrupo.model.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
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

public class ArquivoTest {

	public static void main(String[] args) {

		try {

			try {

				String arq = "grupoLeitura.txt";

				FileReader file = new FileReader(arq);
				BufferedReader leitura = new BufferedReader(file);

				FileWriter fileW = new FileWriter("out_" + arq);
				BufferedWriter escrita = new BufferedWriter(fileW);

				String linha = leitura.readLine();

				String[] campos = null;

				List<Literatura> literaturas = new ArrayList<Literatura>();
				Leitura lt = null;

				while (linha != null) {

					campos = linha.split(";");

					switch (campos[0].toUpperCase()) {

					case "P":

						try {

							boolean valorBool0 = "Estudo".equals(campos[5]);

							lt = new Leitura(new Grupo(Integer.valueOf(campos[3]), campos[4], valorBool0), literaturas);

							lt.setDetalhes(campos[1]);
							lt.setPresencial("Presencial".equals(campos[2]) ? true : false);

						} catch (NumberFormatException | GrupoInvalidoException | LiteraturaInvalidoException e) {
							System.out.println("[ERRO]" + e.getMessage());
						}

						escrita.write(lt.toString() + lt.getGrupo().toString() + "\r\n");

						break;

					case "L":

						boolean valorBool = "Traduzido".equals(campos[6]);
						

						Livro l = new Livro(Integer.valueOf(campos[1]), campos[2], Float.valueOf(campos[3]), campos[4],
								campos[5], valorBool);
						literaturas.add(l);

						escrita.write(l.toString() + "\r\n");

						break;

					case "R":

						Revista r = new Revista(Integer.valueOf(campos[1]), campos[2], Float.valueOf(campos[3]),
								campos[4], campos[5], Integer.valueOf(campos[6]));
						escrita.write(r.toString() + "\r\n");

						literaturas.add(r);

						break;

					case "Q":
						boolean valorBool2 = "Finalizado".equals(campos[5]);
						

						Quadrinho q = new Quadrinho(Integer.valueOf(campos[1]), campos[2], Float.valueOf(campos[3]),
								Integer.valueOf(campos[4]), valorBool2, campos[6]);
						literaturas.add(q);

						escrita.write(q.toString() + "\r\n");

						break;

					default:
						System.out.println("Literatura ainda não mapeada:  " + linha);
						break;
					}

					linha = leitura.readLine();

				}

				escrita.write(lt.arquivoInfo());

				leitura.close();
				file.close();

				escrita.close();
				fileW.close();

			} catch (IOException e) {
				System.out.println("[ERROR] " + e.getMessage());
			}

		} finally {
			System.out.println("Processamento realizado com sucesso!!!");
		}

	}

}
