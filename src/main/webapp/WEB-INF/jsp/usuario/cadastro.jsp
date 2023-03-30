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
			<link rel="stylesheet" href="css/login.css" type="text/css">
			<meta charset="utf-8">
			<title>Sign Up</title>
		</head>

		<body>
			<c:import url="/WEB-INF/jsp/menu.jsp" />

			<div class="container" id="form">
				<div class="row">
					<div class="col-12 text-center">
						<img class=" img-logo" id="logo"
							src="https://elasticbeanstalk-us-east-1-432335396377.s3.amazonaws.com/Logos/LeituraEmGrupo/books-stack-of-three.png"
							alt="Book Logo" width="72" height="57" />
						<h3 class="mb-4 text-center" id="signin_title">Crie sua conta</h3>
					</div>

					<form action="/cep"  method="post">
						<div class="input-group">
							<button class="btn btn-dark disabled" style=" width: 200px; font-weight:700; font-size:20px;"
								type="">CEP</button>
							<input type="text" class="form-control" value="26155070" name="cep" />
							<button class="btn btn-dark" style=" width: 200px; font-weight:700; font-size:20px;" type="submit">Buscar</button>
						</div>
					</form>

				</div>

				<div class="row">

					<div class="col-4">
						<div class="mb-3">
							<form action="/" method="post">
								<label for="formFile" class="form-label">Selecione sua foto</label>
								<input class="form-control" type="file" id="formFile" />
						</div>
						<button type="submit" class="btn btn-dark">
							Enviar
						</button>
						</form>
					</div>

					<form action="usuario/incluir" method="post" class="col-8">
						<div class="form-group">
							<label>Nome:</label> <input type="text" class="form-control" name="nome" value="Marcos Cassiano">
							<label>Idade:</label>
							<input type="number" class="form-control" name="idade" value="25">
							<label>Email:</label> <input type="email" class="form-control" name="email"
								value="marcoscassiano@email.com"> <label>Senha:</label>
							<input type="password" class="form-control" name="senha" value="12345">
						</div>

						<div class="form-group">
							<label>Leitura Favorita:</label>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio" name="tipo" value="livro" checked
										class="form-check-input">
									Livros
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio" name="tipo" value="quadrinho"
										class="form-check-input">
									Quadrinhos
								</label>
							</div>
							<div class="form-check">
								<label class="form-check-label"> <input type="radio" name="tipo" value="revista"
										class="form-check-input">
									Revistas
								</label>
							</div>

						</div>

						<div class="form-group">
							<label>Nível de Leitura:</label> <select name="nivel" class="form-control">
								<option value="iniciante">Iniciante</option>
								<option value="intermediário">Intermediário</option>
								<option value="avançado" selected>Avançado</option>
							</select>
						</div>

						<c:import url="/WEB-INF/jsp/endereco/cadastro.jsp" />
						<div class="form-group">
							<button type="submit" class="form-control btn btn-dark rounded submit px-3">
								Criar minha conta grátis</button>

					</form>
				</div>
			</div>

		</body>

		</html>