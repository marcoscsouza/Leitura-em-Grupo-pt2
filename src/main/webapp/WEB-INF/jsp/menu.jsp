<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">
    <img src="https://elasticbeanstalk-us-east-1-432335396377.s3.amazonaws.com/Logos/LeituraEmGrupo/books-stack-of-three+(1).png" alt="" width="30" height="24" class="d-inline-block align-text-top">
    LEITURA EM GRUPO
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <c:if test="${not empty usuario}">

            <li class="nav-item">
              <a class="nav-link" href="/usuario/lista"><i class="fi fi-rr-user"></i> Usuário</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/grupo/lista"><i class="fi fi-rr-users-alt"></i> Grupo</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fi fi-rr-book-alt"></i> Literaturas
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="/literatura/lista">Literatura</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="/livro/lista">Livro</a></li>
                <li><a class="dropdown-item" href="/quadrinho/lista">Quadrinho</a></li>
                <li><a class="dropdown-item" href="/revista/lista">Revista</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/leitura/lista"><i class="fi fi-rr-book-user"></i> Leitura</a>
            </li>
        </c:if>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <c:if test="${empty usuario}">

            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/usuario"><i class="fi fi-rr-user-add"></i> Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/login"><i class="fi fi-rr-user"></i> Login</a>
            </li>
        </c:if>
        <c:if test="${not empty usuario}">
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/logout"><i class="fi fi-rr-arrow-right-to-bracket"></i> Logout, ${usuario.nome}</a>
            </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>