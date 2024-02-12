<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
    String nomeCompleto = request.getParameter("nomeCompleto");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");
    String nomeEmpresa = request.getParameter("nomeEmpresa");
    String proposito = request.getParameter("proposito");

    List<String[]> registros = (List<String[]>) application.getAttribute("registros");
    if (registros == null) {
        registros = new ArrayList<>();
    }
    String[] registro = {nomeCompleto, email, telefone, nomeEmpresa, proposito};
    registros.add(registro);
    application.setAttribute("registros", registros);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro Salvo</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Registro Salvo com Sucesso!</h1>
        <a href="index.jsp" class="btn btn-primary mt-3">Voltar à página inicial</a>
    </div>
</body>
