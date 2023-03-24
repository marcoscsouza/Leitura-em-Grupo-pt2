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
<title>Cadastro de Usuário</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<form action="quadrinho/incluir" method="post">
			<h3>Cadastro de quadrinhos</h3>



			<div class="form-group">
				<label>Titulo:</label> <input type="text" class="form-control" name="titulo" value="Shingeki no Kyojin">
				<label>Ilustrador:</label> <input type="text" class="form-control" name="ilustrador" value="Hydeo Kojima">
			    <label>Volume:</label> <input type="number" class="form-control" name="volume" value="4">
                <label>Valor:</label> <input type="number" class="form-control" name="valor" value="18.56">
                <label>Data Lançamento:</label> <input type="number" class="form-control" name="anoPublicado" value="2004">
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