<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Livro</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<form action="livro/incluir" method="post">
			<h3>Cadastro de livros</h3>

			<div class="form-group">
				<label>Titulo do livro: </label> <input type="text" class="form-control"
					name="titulo" value="Contos de HP LoveCraft"> 
				<label>Autor do livro: </label> <input type="text" class="form-control"
				name="autor" value="H`Lovecraft"> 
				<label>Ano de publicação:</label> <input type="number" class="form-control" 
				name="anoPublicado" value="1940">
				<label>Valor:</label> <input type="number" class="form-control" name="valor" 
				value="26.99">
				<label>Genero:</label> <input type="text" class="form-control" name="genero" 
				value="Horror Cósmico">
			</div>

					

			<div class="form-group">
				<label>Traduzido para português:</label> <select name="traduzido"
					class="form-control">
					<option value="true" selected>SIM</option>
					<option value="false">NÂO</option>
				</select>
			</div>

			<button class="btn btn-primary" type="submit">Cadastrar</button>
		</form>
	</div>

</body>
</html>