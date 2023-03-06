<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro de Usuário</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
		<form action="revista/incluir" method="post">
			<h3>cadastro de revistas</h3>

			<div class="form-group">
                <label>Titulo:</label> <input type="text" class="form-control" name="titulo" value="Fofoca do BBB">
                <label>Instituto:</label> <input type="text" class="form-control" name="instituto" value="Globo">
                <label>Categora:</label> <input type="text" class="form-control" name="categoria" value="popular">
                <label>Valor:</label> <input type="number" class="form-control" name="valor" value="18.56">
                <label>Edição:</label> <input type="number" class="form-control" name="edicao" value="10">
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