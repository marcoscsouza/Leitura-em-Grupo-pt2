<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<link rel='stylesheet'
				href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
				crossorigin="anonymous"></script>
			<meta charset="ISO-8859-1">
			<title>Cadastro de Usuário</title>
		</head>

		<body>

			<c:import url="/WEB-INF/jsp/menu.jsp" />

			<div class="container">
				<form action="quadrinho/incluir" method="post">
					<h3>Cadastro de quadrinhos</h3>

					<c:import url="/WEB-INF/jsp/literatura/cadastro.jsp" />

					<div class="form-group">

						<label>Ilustrador:</label> <input type="text" class="form-control" name="ilustrador" value="Hydeo Kojima">

						<label>Volume:</label> <input type="number" class="form-control" name="volume" value="4">

					</div>

					<div class="form-group">
						<label>Finalizado:</label>
						<select class="form-control" name="finalizado">
							<option value="true" select>Sim</option>
							<option value="false">Não</option>
						</select>
					</div>

					<button class="btn btn-primary" type="submit">Cadastrar</button>
				</form>
			</div>

		</body>

		</html>