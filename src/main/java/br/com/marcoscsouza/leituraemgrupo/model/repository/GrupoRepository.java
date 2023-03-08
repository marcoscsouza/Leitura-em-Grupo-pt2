package br.com.marcoscsouza.leituraemgrupo.model.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Grupo;

public class GrupoRepository {

	private static Integer id = 1;
	private static Map<Integer, Grupo> mapaGrupo = new HashMap<Integer, Grupo>();
	
	
	public static boolean incluir(Grupo grupo) {

		grupo.setId(id++);

		try {
			mapaGrupo.put(grupo.getId(), grupo);
			return true;
		} catch (Exception e) {
			return false;
		}
		

	}

	public static Grupo excluir(Integer key) {
		return mapaGrupo.remove(key);
	}

	public static Collection<Grupo> obterLista() {
		return mapaGrupo.values();

	}
	

}