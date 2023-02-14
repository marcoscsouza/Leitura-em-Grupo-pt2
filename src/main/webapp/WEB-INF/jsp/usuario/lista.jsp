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
<title>Cadastro de Usuário</title>
</head>
<body>

	<div class="container">
		<form action="/usuario" method="get">
			<h3>Listagem de Usuários</h3>

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
					<th>nível de Leitura</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Marcos Cassiano</td>
					<td>Senha123</td>
					<td>exemplo@email.com</td>
					<td>27</td>
					<td>Livro</td>
					<td>Intermediário</td>
				</tr>
				<tr>
					<td>Marcos Cassiano</td>
					<td>Senha123</td>
					<td>exemplo@email.com</td>
					<td>27</td>
					<td>Livro</td>
					<td>Intermediário</td>
				</tr>
				<tr>
					<td>Marcos Cassiano</td>
					<td>Senha123</td>
					<td>exemplo@email.com</td>
					<td>27</td>
					<td>Livro</td>
					<td>Intermediário</td>
				</tr>

			</tbody>
		</table>
	</div>

</body>
</html>
