<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3d4898b8f6.js" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Quadrinhos</title>
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
							<td>
							    <c:if test="${q.finalizado}">
                                    <i class="fas fa-check"></i>
                                </c:if>
                                <c:if test="${not q.finalizado}">
                                   <i class="fas fa-times"></i>
                                </c:if>
                            </td>
							<td>${q.valor}</td>
							<td> <button class="btn btn-danger" onclick="window.location.href='/quadrinho/${q.id}/excluir'"> Excluir </button></td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
	</div>
</body>
</html>
