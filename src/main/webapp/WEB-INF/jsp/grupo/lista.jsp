<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Grupo</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<h3>Listagem de Grupos</h3>

		<form action="/grupo" method="get">
			<c:if test="${not empty mensagem}">
				<div class="alert alert-success">
					<strong>Sucesso!</strong> ${mensagem}
				</div>
			</c:if>
			<button type="submit">Novo</button>
		</form>

		<c:if test="${empty grupos}">
			<h5>Não existe grupos cadastrados!</h5>
		</c:if>

		<c:if test="${not empty grupos}">
			<h5>Quantidade de grupos cadastrados: ${grupos.size()}!</h5>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Integrantes</th>
						<th>Reponsável</th>
						<th>Estudo</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="g" items="${grupos}">
						<tr>
							<td>${g.id}</td>
							<td>${g.integrantes}</td>
							<td>${g.nomeResponsavel}</td>
							<td>${g.ehEstudo}</td>
							<td><a href="/grupo/${g.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
					</c:if>


				</tbody>
			</table>
	</div>

</body>
</html>
