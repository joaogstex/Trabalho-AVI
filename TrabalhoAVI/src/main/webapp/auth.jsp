<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");


if ("coordenador".equals(username) && "1234".equals(password)) {
    session.setAttribute("tipoUsuario", "coordenador");
    response.sendRedirect("coordenador.html");
} else if ("aluno".equals(username) && "abcd".equals(password)) {
    session.setAttribute("tipoUsuario", "aluno");
    response.sendRedirect("aluno.html");
} else {
    response.sendRedirect("login.jsp");
}

%>

