<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">Leitura em Grupo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="/">Home</a>
        </li>
        <c:if test="${not empty usuario}">
            <li class="nav-item">
              <a class="nav-link" href="/usuario/lista">Usuario</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/grupo/lista">Grupo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Literatura</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/livro/lista">Livro</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/quadrinho/lista">Quadrinho</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/revista/lista">Revista</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Leitura</a>
            </li>
        </c:if>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <c:if test="${empty usuario}">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/usuario"><span class="glyphicon glyphicon-user"></span>Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a>
            </li>
        </c:if>
        <c:if test="${not empty usuario}">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout, ${usuario.nome}</a>
            </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>