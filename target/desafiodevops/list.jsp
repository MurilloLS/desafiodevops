<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Registros</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Registros Salvos</h1>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th>Nome Completo</th>
                    <th>E-mail</th>
                    <th>Telefone</th>
                    <th>Nome da Empresa</th>
                    <th>Propósito de Interesse</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <% List<String[]> registros = (List<String[]>) application.getAttribute("registros");
                    if (registros != null) {
                        for (int i = 0; i < registros.size(); i++) {
                            String[] registro = registros.get(i); %>
                            <tr>
                                <td><%= registro[0] %></td>
                                <td><%= registro[1] %></td>
                                <td><%= registro[2] %></td>
                                <td><%= registro[3] %></td>
                                <td><%= registro[4] %></td>
                                <td>
                                    <a href="edit.jsp?id=<%= i %>" class="btn btn-sm btn-primary">Editar</a>
                                    <a href="delete.jsp?id=<%= i %>" class="btn btn-sm btn-danger">Excluir</a>
                                </td>
                            </tr>
                        <% }
                    } %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-secondary">Voltar à página inicial</a>
    </div>
</body>
</html>
