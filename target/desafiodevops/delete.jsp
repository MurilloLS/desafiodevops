<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<String[]> registros = (List<String[]>) application.getAttribute("registros");
    registros.remove(id);
    application.setAttribute("registros", registros);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro Excluído</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Registro Excluído com Sucesso!</h1>
        <a href="list.jsp" class="btn btn-primary mt-3">Voltar à lista de registros</a>
    </div>
</body>
</html>
