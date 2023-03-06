<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de revista</title>
</head>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
			<h3>Listagem de revista</h3>

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

			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>titulo</th>
						<th>instituto</th>
						<th>edicao</th>
						<th>categoria</th>
						<th>ano publicação</th>
						<th>valor</th>
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
							<td><a href="/revista/${r.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
					</c:if>


				</tbody>
			</table>
	</div>

</body>
</html>
