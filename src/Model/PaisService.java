package Model;
import Model.Pais;
import Model.PaisDao;

public class PaisService {
	PaisDao dao;
	Pais pais;
	
	public PaisService() {
		 dao = new PaisDao();
	}
	
	public void criar(Pais pais) {
		dao.incluirPais(pais);
	}
	
	public void alterarNome(Pais pais, String nome) {
		dao.atualizarPais(pais, nome);
	}
	
	public void deletar(Pais pais) {
		dao.deletarPais(pais);
	}
	
	public void selectPais(Pais pais) {
		dao.carregarPais(pais);
	}
	
	public void menorArea(Pais pais){
		dao.getMenorArea(pais);
	}
	
	public void habitantes(Pais pais){
		dao.getHabitantes(pais);
	}
	
	public String[] arrayPaises() {
		return dao.vetorPaises();
	}
}
