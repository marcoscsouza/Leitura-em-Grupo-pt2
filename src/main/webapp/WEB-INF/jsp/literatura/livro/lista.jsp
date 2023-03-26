<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Livros</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<h3>Listagem de Livros</h3>

		<form action="/livro" method="get">
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Sucesso!</strong> ${mensagem}
			</div>
		</c:if>
		<button type="submit" class="btn btn-primary" >Cadastrar</button>
		</form>

		<c:if test="${empty livros}">
			<h5>Não existe livros cadastrados!</h5>
		</c:if>

		<c:if test="${not empty livros}">
			<h5>Quantidade de livros cadastrados: ${livros.size()}!</h5>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>titulo</th>
						<th>autor</th>
						<th>ano publicação</th>
						<th>valor</th>
						<th>genero</th>
						<th>traduzido</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="l" items="${livros}">
						<tr>
							<td>${l.id}</td>
							<td>${l.titulo}</td>
							<td>${l.autor}</td>
							<td>${l.anoPublicado}</td>
							<td>${l.valor}</td>
							<td>${l.genero}</td>
							<td>
							    <c:if test="${l.traduzido}">
                                    <i class="fi fi-rr-check"></i>
                                </c:if>
                                <c:if test="${not l.traduzido}">
                                    <i class="fi fi-rr-cross"></i>
                                </c:if>
                            </td>
							<td> <button class="btn btn-danger" onclick="window.location.href='/livro/${l.id}/excluir'"> Excluir </button></td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
	</div>
</body>
</html>
