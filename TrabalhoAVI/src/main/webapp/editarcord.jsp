<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda de Disponibilidade de Coordenadores</title>
<link rel="icon" href="imagens/crud.png">
<link rel="stylesheet" href="style.css">
<style>

#contato {
 text-align: center;
}

</style>
</head>
<body>

	<h1 id="contato">Editar Config. Coordenador</h1>
	<form action="update">
		<div class="container">
			<table>
				<tr>
					<td><input type="text" name="idcon" id="caixa3" readonly
						value="<%out.print(request.getAttribute("idcon"));%>"></td>
				</tr>

				<tr>
					<td><input type="text" name="nome" class="Caixa1"
						value="<%out.print(request.getAttribute("nome"));%>"></td>
				</tr>

				<tr>
					<td><input type="text" name="curso" class="Caixa2"
						value="<%out.print(request.getAttribute("curso"));%>"></td>
				</tr>

				<tr>
					<td><input type="text" name="listaPeriodoDisponibilidade"
						class="Caixa1"
						value="<%out.print(request.getAttribute("listaPeriodoDisponibilidade"));%>">
					</td>
				</tr>
			</table>
		</div>
		<input type="submit" value="Salvar" class="botao1" onclick="validar()">
	</form>
	<script src="scriptavi/validador.js"></script>
</body>
</html>
