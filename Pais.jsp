<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Model.Pais" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
<title>Pais Cadastrado</title>
</head>
<body>
<!-- Barra superior com os menus de navegação -->
<c:import url="Menu.jsp"/>
<!-- Container Principal -->
<div class="container">
  <h2>Pais Cadastrado</h2>
  <p>Parabens o pais com o id ${pais.id} foi cadastrado com sucesso</p>            
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Area</th>
        <th>Populacao</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${pais.id}</td>
        <td>${pais.nome}</td>
        <td>${pais.area}</td>
        <td>${pais.populacao}</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>