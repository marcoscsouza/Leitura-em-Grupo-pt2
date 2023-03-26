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
<title>Revistas</title>
</head>
<body>

<!-- Falta formartar para ficar igual as outras -->


<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
			<h3>Lista de revistas</h3>
            <form action="/revista" method="get">
                <c:if test="${not empty mensagem}">
                    <div class="alert alert-success">
                        <strong>Sucesso!</strong> ${mensagem}
                    </div>
                </c:if>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </form>
		<c:if test="${empty revistas}">
			<h5>Não existe revistas cadastrados!</h5>
		</c:if>

		<c:if test="${not empty revistas}">
			<h5>Quantidade de revistas cadastrados: ${revistas.size()}!</h5>

			<table class="table table-dark table-borderless table-hover table-responsive">
				<thead>
					<tr>
						<th>ID</th>
						<th>Titulo</th>
						<th>Instituto</th>
						<th>Edicao</th>
						<th>Categoria</th>
						<th>Ano publicação</th>
						<th>Valor</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="r" items="${revistas}">
						<tr>
							<td>${r.id}</td>
							<td>${r.titulo}</td>
							<td>${r.instituto}</td>
							<td>${r.edicao}</td>
							<td>${r.categoria}</td>
							<td>${r.anoPublicado}</td>
							<td>${r.valor}</td>
							<td> <button class="btn btn-danger" onclick="window.location.href='/revista/${r.id}/excluir'"> Excluir </button></td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>
	</div>
</body>
</html>
