<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="ISO-8859-1">
<title>Cadastro de Usu�rio</title>
</head>
<body>

	<div class="container">
		<form action="/usuario" method="get">
			<h3>Listagem de Usu�rios</h3>

			<button type="submit">Novo</button>
		</form>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Senha</th>
					<th>E-mail</th>
					<th>idade</th>
					<th>Tipo preferido</th>
					<th>n�vel de Leitura</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Marcos Cassiano</td>
					<td>Senha123</td>
					<td>exemplo@email.com</td>
					<td>27</td>
					<td>Livro</td>
					<td>Intermedi�rio</td>
				</tr>
				<tr>
					<td>Marcos Cassiano</td>
					<td>Senha123</td>
					<td>exemplo@email.com</td>
					<td>27</td>
					<td>Livro</td>
					<td>Intermedi�rio</td>
				</tr>
				<tr>
					<td>Marcos Cassiano</td>
					<td>Senha123</td>
					<td>exemplo@email.com</td>
					<td>27</td>
					<td>Livro</td>
					<td>Intermedi�rio</td>
				</tr>

			</tbody>
		</table>
	</div>

</body>
</html>
