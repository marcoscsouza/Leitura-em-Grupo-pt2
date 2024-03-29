<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
			<meta charset="utf-8">
			<title>Cadastro de Leitura</title>
		</head>

		<body>

			<c:import url="/WEB-INF/jsp/menu.jsp" />

			<div class="container">
				<form action="leitura/incluir" method="post">

					<c:set var="botao" value="" />


					<h3>Cadastro de Leitura</h3>

					<div class="form-group">
						<label>Detalhes: </label> <input type="text" class="form-control" name="detalhes"
							value="detalhes da leitra">

						<!--
				<label>Data:</label> <input type="text" class="form-control" name="dataRegistro"
				value="26/03/2023">     -->


					</div>
					<div class="form-group">
						<label>Leitura presencial:</label> <select name="presencial" class="form-control">
							<option value="true" selected>SIM</option>
							<option value="false">NÃO</option>
						</select>
					</div>


					<div class="form-group">
						<c:if test="${not empty grupos}">
							<label>Grupo:</label>
							<select name="grupo" class="form-control">
								<c:forEach var="g" items="${grupos}">
									<option value="${g.id}" selected>${g.nomeResponsavel}</option>
								</c:forEach>
							</select>
						</c:if>
						<c:if test="${empty grupos}">
							<c:set var="botao" value="disabled" />
							<h1>Não existem solicitantes cadastrados!</h1>
						</c:if>
					</div>




					<div class="form-group">
						<c:if test="${not empty literaturas}">
							<label>Literaturas:</label>
							<c:forEach var="l" items="${literaturas}">
								<div class="<div class=" form-check">
									<label class="form-check-label">
										<input type="checkbox" class="form-check-input" name="literaturas" id="" value="${l.id}">
										${l.titulo}
									</label>
								</div>
							</c:forEach>
						</c:if>
						<c:if test="${empty literaturas}">
							<c:set var="botao" value="disabled" />
							<h1>Não existem literaturas cadastradas!</h1>
						</c:if>

					</div>

			</div>

			<button ${botao} class="btn btn-primary" type="submit">Cadastrar</button>
			</form>
			</div>
		</body>

		</html>