package br.ucsal.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class DAO {

	private List<Coordenador> cord = new ArrayList<>();

	public void inserirCoordenador(Coordenador coordenador) {
		cord.add(coordenador);
	}

	public List<Coordenador> listarCoordenadores() {
		return cord;
	}

	public Optional<Coordenador> selecionarCoordenador(String idcon) {
		return cord.stream().filter(c -> c.getIdcon().equals(idcon)).findFirst();
	}

	public void alterarCoordenador(Coordenador coordenador) {
		selecionarCoordenador(coordenador.getIdcon()).ifPresent(c -> {
			c.setNome(coordenador.getNome());
			c.setCurso(coordenador.getCurso());
			c.setListaPeriodoDisponibilidade(coordenador.getListaPeriodoDisponibilidade());
		});
	}

	public void removerCoordenador(String idcon) {
		cord.removeIf(c -> c.getIdcon().equals(idcon));
	}
}
