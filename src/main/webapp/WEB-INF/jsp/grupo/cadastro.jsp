<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Grupo</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<form action="grupo/incluir" method="post">
			<h3>Cadastrar novo grupo</h3>

			<div class="form-group">
				<label>Nome Responsável:</label> <input type="text"
					class="form-control" name="nomeResponsavel" value="Marcos Cassiano"> <label>Numero
					de integrantes:</label> <input type="number" class="form-control"
					name="integrantes" value="25">
			</div>

			<div class="form-group">
				<label>Grupo de estudos? </label> <select name="ehEstudo"
					class="form-control">
					<option value="true">SIM</option>
					<option value="false">NÃO</option>
				</select>
			</div>

			<button class="btn btn-primary" type="submit">Cadastrar</button>
		</form>
	</div>

</body>
</html>