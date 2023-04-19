 package br.ucsal.model;

 public class Coordenador {
	    private String idcon;
	    private String nome;
	    private String curso;
	    private String listaPeriodoDisponibilidade;

	    public Coordenador() {
	        super();
	    }

	    public Coordenador(String idcon, String nome, String curso, String listaPeriodoDisponibilidade) {
	        super();
	        this.idcon = idcon;
	        this.nome = nome;
	        this.curso = curso;
	        this.listaPeriodoDisponibilidade = listaPeriodoDisponibilidade;
	    }

	    public String getIdcon() {
	        return idcon;
	    }
	    public void setIdcon(String idcon) {
	        this.idcon = idcon;
	    }
	    public String getNome() {
	        return nome;
	    }
	    public void setNome(String nome) {
	        this.nome = nome;
	    }
	    public String getCurso() {
	        return curso;
	    }
	    public void setCurso(String curso) {
	        this.curso = curso;
	    }
	    public String getListaPeriodoDisponibilidade() {
	        return listaPeriodoDisponibilidade;
	    }
	    public void setListaPeriodoDisponibilidade(String listaPeriodoDisponibilidade) {
	        this.listaPeriodoDisponibilidade = listaPeriodoDisponibilidade;
	    }   
	
	
}
