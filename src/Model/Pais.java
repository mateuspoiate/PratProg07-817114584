package Model;

public class Pais {

	private int id;
	private String nome;
	private long populacao;
	private double area;
	
	public Pais() {
		
	}

	public Pais(int id,String nome, long populacao, double area) {
		//this(); Chama o construtor da super classe
		super();
		setId(id);
		setNome(nome);
		setPopulacao(populacao);
		setArea(area);
	}
	
	public Pais(String nome, long populacao, double area, Pais pais) {
		setNome(nome);
		setPopulacao(populacao);
		setArea(area);
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public long getPopulacao() {
		return populacao;
	}

	public void setPopulacao(long populacao) {
		this.populacao = populacao;
	}

	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}
	
	
	public String toString() {
		
		return "ID: " + getId() + " Nome: "+getNome()+" Pop: "+getPopulacao()+" Area: "+getArea();
	}
	
	
}
