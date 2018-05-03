<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
<title>Index</title>
</head>
<body>
<!-- Barra superior com os menus de navegação -->
<c:import url="Menu.jsp"/>
<!-- Container Principal -->

<div class="container">
  <h2>Bem vindo ao sistema de cadastro de paises</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <center><img src="http://www.qualviagem.com.br/wp-content/uploads/2015/05/iStock_76433773_SMALL.jpg" alt="Los Angeles" style="width:50%;"></center>
      </div>

      <div class="item">
        <center><img src="http://3.bp.blogspot.com/-PtLrE7s2H44/VTkEBCyHy4I/AAAAAAABbi0/tjtJgK3e0rw/s1600/globe%2B(1).jpg" alt="Chicago" style="width:30%;"></center>>
      </div>
    
      <div class="item">
        <center><img src="https://www.ifpb.edu.br/relacoes-internacionais/imagens/mundo.png/@@images/image.png" alt="New york" style="width:50%;"></center>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


</body>
</html>