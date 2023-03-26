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
<title>Cadastro de Grupo</title>
</head>
<body>
<!-- Falta formartar para ficar igual as outras -->

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<h3>Lista de Grupos</h3>

		<form action="/grupo" method="get">
			<c:if test="${not empty mensagem}">
				<div class="alert alert-success">
					<strong>Sucesso!</strong> ${mensagem}
				</div>
			</c:if>
			<button class="btn btn-primary" type="submit">Cadastrar</button>
		</form>

		<c:if test="${empty grupos}">
			<h5>Não existe grupos cadastrados!</h5>
		</c:if>

		<c:if test="${not empty grupos}">
			<h5>Quantidade de grupos cadastrados: ${grupos.size()}!</h5>

			<table class="table table-dark table-borderless table-hover table-responsive">
				<thead>
					<tr>
						<th>ID</th>
						<th>Integrantes</th>
						<th>Reponsável</th>
						<th>Grupo de estudo</th>
						<th>Usuário</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="g" items="${grupos}">
						<tr>
							<td>${g.id}</td>
							<td>${g.integrantes}</td>
							<td>${g.nomeResponsavel}</td>
							<td>
							<c:if test="${g.ehEstudo == true}">
                                <i class="fi fi-rr-check"></i>
                            </c:if>
                            <c:if test="${g.ehEstudo == false}">
                                <i class="fi fi-rr-cross"></i>
                            </c:if>
							</td>
							<td>${g.usuario.nome}</td>
							<td> <button class="btn btn-danger" onclick="window.location.href='/grupo/${g.id}/excluir'"> Excluir </button></td>
						</tr>
					</c:forEach>
					</c:if>


				</tbody>
			</table>
	</div>

</body>
</html>
