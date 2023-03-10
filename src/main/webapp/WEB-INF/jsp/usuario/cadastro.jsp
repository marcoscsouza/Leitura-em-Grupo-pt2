<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Usu?rio</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<form action="usuario/incluir" method="post">
			<h3>Formul?rio</h3>

			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control"
					name="nome" value="Marcos Cassiano"> <label>Idade:</label>
				<input type="number" class="form-control" name="idade" value="25">
			</div>

			<div class="form-group">
				<label>Email:</label> <input type="email" class="form-control"
					name="email" value="marcoscassiano@email.com"> <label>Senha:</label>
				<input type="password" class="form-control" name="senha"
					value="12345">
			</div>

			<div class="form-group">
				<label>Leitura Favorita:</label>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						name="tipo" value="livro" checked class="form-check-input">
						Livros
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						name="tipo" value="quadrinho" class="form-check-input">
						Quadrinhos
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label"> <input type="radio"
						name="tipo" value="revista" class="form-check-input">
						Revistas
					</label>
				</div>

			</div>

			<div class="form-group">
				<label>N?vel de Leitura:</label> <select name="nivel"
					class="form-control">
					<option value="iniciante">Iniciante</option>
					<option value="intermedi?rio">Intermedi?rio</option>
					<option value="avan?ado" selected>Avan?ado</option>
				</select>
			</div>

			<button class="btn btn-primary" type="submit">Cadastrar</button>
		</form>
	</div>

</body>
</html>