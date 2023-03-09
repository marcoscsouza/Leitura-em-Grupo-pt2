package br.com.marcoscsouza.leituraemgrupo.model.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Livro;
import org.springframework.stereotype.Repository;

@Repository
public class LivroRepository {

	private static Integer id = 1;
	private static Map<Integer, Livro> mapaLivro = new HashMap<Integer, Livro>();
	

	public boolean incluir(Livro livro) {

		livro.setId(id++);

		try {
			mapaLivro.put(livro.getId(), livro);
			return true;
		} catch (Exception e) {
			return false;
		}
		

	}

	public Livro excluir(Integer key) {
		return mapaLivro.remove(key);
	}

	public Collection<Livro> obterLista() {
		return mapaLivro.values();

	}
}
