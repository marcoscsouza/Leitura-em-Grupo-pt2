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

<% String msg = (String) request.getAttribute("mensagem");%>
    <c:if test="${not empty mensagem}">
        <div class="alert alert-danger">
            <strong>Danger!</strong> ${mensagem}
        </div>
    </c:if>

    <c:import url="/WEB-INF/jsp/menu.jsp" />

    <div class="d-flex justify-content-center align-items-center vh-100 bg-black">
        <div class="col-md-6 col-lg-4" id="form">
          <div class="login-wrap p-0">

                  <img class="img-fluid rounded mx-auto d-block" id="logo"
                  src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/5cd83245-2f1d-450d-ba97-9a1d9ea5a4da/books-stack-of-three.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230323%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230323T170652Z&X-Amz-Expires=86400&X-Amz-Signature=a65bfa3303ef6cc0accf59a3644a94e5f189ec1b64d8f3026b38ba32d6986c57&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22books-stack-of-three.png%22&x-id=GetObject"
                  alt="Book Logo" width="72" height="57">

            <h3 class="mb-4 text-center" id="signin_title">Já possui cadastro?</h3>
            <form action="/login" method="post" class="signin-form">
              <div class="form-group">
              <label>Email:</label>
                <input type="email" class="form-control" name="email" placeholder="User@email.com" value="marcos@email.com">
              </div>
              <div class="form-group">
              <label>Senha:</label>
                <input type="password" class="form-control" name="senha" placeholder="Password" value="1234">
              </div>
              <div class="form-group">
                <button type="submit" class="form-control btn btn-dark rounded submit px-3">Entrar</button>
              </div>
          </form>
        </div>
    </div>

</body>
</html>