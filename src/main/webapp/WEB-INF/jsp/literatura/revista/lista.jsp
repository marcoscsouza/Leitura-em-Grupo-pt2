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
			<h5>N�o existe revistas cadastrados!</h5>
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
						<th>ano publica��o</th>
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
