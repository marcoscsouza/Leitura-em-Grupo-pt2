<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de quadrinhos</title>
</head>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
			<h3>Listagem de quadrinhos</h3>

            <form action="/quadrinho" method="get">
			<c:if test="${not empty mensagem}">
				<div class="alert alert-success">
					<strong>Sucesso!</strong> ${mensagem}
				</div>
			</c:if>
			<button type="submit" class="btn btn-primary">Cadastrar</button>
			</form>



		<c:if test="${empty quadrinhos}">
			<h5>Não existe quadrinhos cadastrados!</h5>
		</c:if>

		<c:if test="${not empty quadrinhos}">
			<h5>Quantidade de quadrinhos cadastrados: ${quadrinhos.size()}!</h5>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>titulo</th>
						<th>ilustrador</th>
						<th>ano publicação</th>
						<th>volume</th>
						<th>finalizado</th>
						<th>valor</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="q" items="${quadrinhos}">
						<tr>
							<td>${q.id}</td>
							<td>${q.titulo}</td>
							<td>${q.ilustrador}</td>
							<td>${q.anoPublicado}</td>
							<td>${q.volume}</td>
							<td>${q.finalizado}</td>
							<td>${q.valor}</td>
							<td><a href="/quadrinho/${q.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
					</c:if>


				</tbody>
			</table>
	</div>

</body>
</html>
