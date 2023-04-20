
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="br.ucsal.model.Coordenador"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Coordenador> lista = (ArrayList<Coordenador>) request.getAttribute("cord");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Agenda de Disponibilidade de Coordenadores</title>
<link rel="icon" href="imagens/crud.png">
<link rel="stylesheet" href="style.css">
<style>
a {
	text-decoration: none;
	color: #333;
}
</style>
</head>
<body>
	<img src=" " class=" ">
	<h1>Agenda de Disponibilidade de Coordenadores</h1>
	<a href="novocord.html" class="botao1">Novo Contato</a>
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Curso</th>
				<th>Período de Disponibilidade</th>
				<th>Opções/Ações</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
				System.out.println(lista.get(i).getNome());
			%>
			<tr>
				<td><%=lista.get(i).getIdcon()%></td>
				<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"><%=lista.get(i).getNome()%></a></td>
				<td><%=lista.get(i).getCurso()%></td>
				<td><p style="white-space: pre-wrap;"><%=lista.get(i).getListaPeriodoDisponibilidade()%></p></td>
				<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"
					class="botao1">Editar</a> <a
					href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)"
					class="botao2">Excluir</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<script src="scriptavi/confirmador.js"></script>
</body>
</html>
