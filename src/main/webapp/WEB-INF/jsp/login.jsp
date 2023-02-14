<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grupo de leitura</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container">
		  <h2>Autenticação</h2>
		  <form action="/login" method="post">
		  
		    <div class="form-group">
		      <label for="email">Email:</label>
		      <input type="email" class="form-control" placeholder="exemplo@email.com" name="email" value="abc@abc.com">
		    </div>
		    <div class="form-group">
		      <label for="pwd">Password:</label>
		      <input type="password" class="form-control"  placeholder="Senha123" name="senha" value="abc@abc.com">
		    </div>
		    <button type="submit" class="btn btn-default">Submit</button>
		  </form>
</div>
</body>
</html>