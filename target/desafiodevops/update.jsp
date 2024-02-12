<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String nomeCompleto = request.getParameter("nomeCompleto");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");
    String nomeEmpresa = request.getParameter("nomeEmpresa");
    String proposito = request.getParameter("proposito");

    List<String[]> registros = (List<String[]>) application.getAttribute("registros");
    String[] registro = registros.get(id);
    registro[0] = nomeCompleto;
    registro[1] = email;
    registro[2] = telefone;
    registro[3] = nomeEmpresa;
    registro[4] = proposito;
    registros.set(id, registro);
    application.setAttribute("registros", registros);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro Atualizado</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Registro Atualizado com Sucesso!</h1>
        <a href="list.jsp" class="btn btn-primary mt-3">Voltar à lista de registros</a>
    </div>
</body>
</html>
