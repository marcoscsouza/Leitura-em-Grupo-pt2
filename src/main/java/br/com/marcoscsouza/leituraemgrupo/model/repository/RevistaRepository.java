package br.com.marcoscsouza.leituraemgrupo.model.repository;

import br.com.marcoscsouza.leituraemgrupo.model.domain.Revista;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class RevistaRepository {

    private static Integer id = 1;

    private static Map<Integer, Revista> mapaRevista = new HashMap<Integer, Revista>();

    public static boolean incluir(Revista revista) {

        revista.setId(id++);

        try {
            mapaRevista.put(revista.getId(), revista);
            return true;
        } catch (Exception e) {
            return false;
        }

    }

    public static Revista excluir(Integer key) {
        return mapaRevista.remove(key);
    }

    public static Collection<Revista> obterLista() {
        return mapaRevista.values();

    }

	

}
