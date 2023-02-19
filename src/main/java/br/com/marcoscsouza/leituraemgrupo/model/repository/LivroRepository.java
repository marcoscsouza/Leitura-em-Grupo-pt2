package br.com.marcoscsouza.leituraemgrupo.model.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;

public class LivroRepository {

	private static Integer id = 1;
	private static Map<Integer, Livro> mapaLivro = new HashMap<Integer, Livro>();
	

	public static boolean incluir(Livro livro) {

		livro.setId(id++);

		try {
			mapaLivro.put(livro.getId(), livro);
			return true;
		} catch (Exception e) {
			return false;
		}
		

	}

	public static Livro excluir(Integer key) {
		return mapaLivro.remove(key);
	}

	public static Collection<Livro> obterLista() {
		return mapaLivro.values();

	}
}
