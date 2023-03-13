<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Usuário</title>
</head>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
			<h3>Listagem de Usuários</h3>

			<c:if test="${not empty mensagem}">
				<div class="alert alert-success">
					<strong>Sucesso!</strong> ${mensagem}
				</div>
			</c:if>


		<c:if test="${empty usuarios}">
			<h5>Não existe usuarios cadastrados!</h5>
		</c:if>

		<c:if test="${not empty usuarios}">
			<h5>Quantidade de usuários cadastrados: ${usuarios.size()}!</h5>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Senha</th>
						<th>E-mail</th>
						<th>idade</th>
						<th>Tipo preferido</th>
						<th>nível de Leitura</th>
						<th>grupos</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${usuarios}">
						<tr>
							<td>${u.id}</td>
							<td>${u.nome}</td>
							<td>${u.senha}</td>
							<td>${u.email}</td>
							<td>${u.idade}</td>
							<td>${u.tipo}</td>
							<td>${u.nivel}</td>
							<td>${u.grupos.size()}</td>
							<td><a href="/usuario/${u.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
					</c:if>


				</tbody>
			</table>
	</div>

</body>
</html>
