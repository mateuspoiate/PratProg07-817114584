<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
<title>Cadastrar Novo Pais</title>
</head>
<body>
<!-- Barra superior com os menus de navegação -->
<c:import url="Menu.jsp"/>
<!-- Container Principal -->

<div style=" margin-top: 100px; margin-bottom: 100px; margin-right: 150px; margin-left: 80px;">

<form action="inserir" method="post">
  <div class="form-group">
    <label for="email">Nome Pais:</label>
    <input class="form-control" name="Nome">
  </div>
  <div class="form-group">
    <label for="pwd">Area Pais:</label>
    <input class="form-control" name="Area">
  </div>
  <div class="form-group">
    <label for="pwd">Populacao Pais:</label>
    <input class="form-control" name="Populacao">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>

</body>
</html>