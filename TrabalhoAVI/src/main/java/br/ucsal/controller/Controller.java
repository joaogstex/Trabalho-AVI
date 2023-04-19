package br.ucsal.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import br.ucsal.model.DAO;
import br.ucsal.model.Coordenador;

@WebServlet(name = "Controller", urlPatterns = { "/Controller", "/main", "/insert", "/select", "/update", "/delete",
		"/aluno" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao;

	public void init() {
		dao = new DAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/main":
			showCoordenadores(request, response);
			break;
		case "/insert":
			insertCoordenador(request, response);
			break;
		case "/select":
			listCoordenador(request, response);
			break;
		case "/update":
			updateCoordenador(request, response);
			break;
		case "/delete":
			deleteCoordenador(request, response);
			break;
		case "/aluno":
			showCoordenadores(request, response);
			break;
		default:
			response.sendRedirect("paginainicial.html");
			break;
		}
	}

	protected void showCoordenadores(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Coordenador> listaCoordenadores = dao.listarCoordenadores();
		request.setAttribute("cord", listaCoordenadores);

		RequestDispatcher rd = request.getRequestDispatcher("cord.jsp");
		rd.forward(request, response);
	}

	protected void insertCoordenador(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idcon = request.getParameter("idcon");
		String nome = request.getParameter("nome");
		String curso = request.getParameter("curso");
		String listaPeriodoDisponibilidade = request.getParameter("listaPeriodoDisponibilidade");

		Coordenador coordenador = new Coordenador(idcon, nome, curso, listaPeriodoDisponibilidade);
		dao.inserirCoordenador(coordenador);

		response.sendRedirect("main");
	}

	protected void listCoordenador(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idcon = request.getParameter("idcon");

		Coordenador coordenadorSelecionado = dao.selecionarCoordenador(idcon).orElse(null);

		if (coordenadorSelecionado != null) {
			request.setAttribute("idcon", coordenadorSelecionado.getIdcon());
			request.setAttribute("nome", coordenadorSelecionado.getNome());
			request.setAttribute("curso", coordenadorSelecionado.getCurso());
			request.setAttribute("listaPeriodoDisponibilidade",
					coordenadorSelecionado.getListaPeriodoDisponibilidade());

			RequestDispatcher rd = request.getRequestDispatcher("editarcord.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("main");
		}
	}

	protected void updateCoordenador(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idcon = request.getParameter("idcon");
		String nome = request.getParameter("nome");
		String curso = request.getParameter("curso");
		String listaPeriodoDisponibilidade = request.getParameter("listaPeriodoDisponibilidade");

		Coordenador coordenador = new Coordenador(idcon, nome, curso, listaPeriodoDisponibilidade);
		dao.alterarCoordenador(coordenador);

		response.sendRedirect("main");
	}

	protected void deleteCoordenador(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idcon = request.getParameter("idcon");

		dao.removerCoordenador(idcon);

		response.sendRedirect("main");
	}
}
