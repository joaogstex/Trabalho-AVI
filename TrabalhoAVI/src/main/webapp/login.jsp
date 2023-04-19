<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link rel="icon" href="imagens/crud.png">
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1 class="Login">Login</h1>
	<form method="post" action="auth.jsp">
		<label for="username">Nome de usuário:</label>
		<input type="text" id="username" name="username" required>
		<br>
		<label for="password">Senha:</label>
		<input type="password" id="password" name="password" required>
		<br>
		<label for="remember-me">Lembrar de mim</label>
		<input type="checkbox" id="remember-me" name="remember-me">
		<br>
		<button type="submit" class="login">Entrar</button>
		<br>
		<a class="esenha" href="#">Esqueceu sua senha?</a>
		<br>
		<a class="google" href="#">Entrar com a conta do Google</a>
	</form>
</body>
</html>