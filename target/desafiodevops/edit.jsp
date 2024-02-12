<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Registro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Editar Registro</h1>
        <form action="update.jsp?id=<%= request.getParameter("id") %>" method="post" class="mt-3">
            <% List<String[]> registros = (List<String[]>) application.getAttribute("registros");
               int id = Integer.parseInt(request.getParameter("id"));
               String[] registro = registros.get(id); %>
            <div class="form-group">
		        <label for="nomeCompleto">Nome Completo:</label>
		        <input type="text" name="nomeCompleto" id="nomeCompleto" class="form-control" required pattern="[a-zA-ZÀ-ÿ\s]{2,}">
		    </div>
		    <div class="form-group">
		        <label for="email">E-mail:</label>
		        <input type="email" name="email" id="email" class="form-control" required>
		    </div>
		    <div class="form-group">
		        <label for="telefone">Telefone:</label>
		        <input type="tel" name="telefone" id="telefone" class="form-control" required pattern="[0-9()-]{10,}">
		    </div>
		    <div class="form-group">
		        <label for="nomeEmpresa">Nome da Empresa:</label>
		        <input type="text" name="nomeEmpresa" id="nomeEmpresa" class="form-control" required>
		    </div>
		    <div class="form-group">
		        <label for="proposito">Propósito de Interesse:</label>
		        <textarea name="proposito" id="proposito" class="form-control" required></textarea>
		    </div>
            <button type="submit" class="btn btn-primary">Salvar Alterações</button>
            <button type="reset" class="btn btn-danger">Limpar</button>
        </form>
        <a href="list.jsp" class="btn btn-secondary mt-3">Voltar à lista de registros</a>
    </div>
</body>
</html>
