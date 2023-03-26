<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/login.css"  type="text/css">
</head>
<body>
    <c:import url="/WEB-INF/jsp/menu.jsp" />
    <% String msg = (String) request.getAttribute("mensagem");%>
    <c:if test="${not empty mensagem}">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
            <strong>Danger! </strong> ${mensagem}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <div class="d-flex justify-content-center align-items-center vh-100 bg-black">
        <div class="col-md-6 col-lg-4" id="form">
          <div class="login-wrap p-0">
              <img class="img-fluid rounded mx-auto d-block" id="logo"
              src="https://elasticbeanstalk-us-east-1-432335396377.s3.amazonaws.com/Logos/LeituraEmGrupo/books-stack-of-three.png"
              alt="Book Logo" width="72" height="57">
            <h3 class="mb-4 text-center" id="signin_title">Já possui cadastro?</h3>
            <form action="/login" method="post" class="signin-form">
              <div class="form-group">
                  <label>Email:</label>
                    <input type="email" class="form-control" name="email" placeholder="User@email.com" value="adm@email.com">
              </div>
              <div class="form-group">
                  <label>Senha:</label>
                    <input type="password" class="form-control" name="senha" placeholder="Password" value="123456">
              </div>
              <div class="form-group">
                <button type="submit" class="form-control btn btn-dark rounded submit px-3">Entrar</button>
              </div>
          </form>
        </div>
    </div>

</body>
</html>