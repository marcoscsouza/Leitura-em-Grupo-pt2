<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grupo de leitura</title>



<<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link rel="stylesheet" href="css/login.css">
</head>
<body>


	<% String msg = (String) request.getAttribute("mensagem");%>

    <c:if test="${not empty mensagem}">
        <div class="alert alert-danger">
            <strong>Danger!</strong> ${mensagem}
        </div>
    </c:if>

    <div class="wrapper fadeInDown">
      <div id="formContent">

        <div class="fadeIn first">
            <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="Grupo de Leitura" />
        </div>
        <form action="/login" method="post">
            <h1 class="h3 mb-3 font-weight-normal">Por favor, faça login</h1>

            <input type="email" id="login" class="fadeIn second" placeholder="exemplo@email.com" name="email" value="abc@abc.com">
            <input type="password" id="password" class="fadeIn third" placeholder="Senha123"  name="senha" value="abc@abc.com">

            <button type="submit" class="fadeIn fourth">Submit</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
        </form>
        </div>
    </div>
</body>
</html>