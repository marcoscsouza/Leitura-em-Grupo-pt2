<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Leitura em Grupo</a>
			</div>
			
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>

                <c:if test="${not empty usuario}">
                    <li><a href="/usuario/lista">Usuario</a></li>
                    <li><a href="/grupo/lista">Grupo</a></li>
                    <li><a href="#">Literatura</a></li>
                    <li><a href="/livro/lista">Livro</a></li>
                    <li><a href="/quadrinho/lista">Quadrinho</a></li>
                    <li><a href="/revista/lista">Revista</a></li>
                    <li><a href="#">Leitura</a></li>
                </c:if>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
                <c:if test="${empty usuario}">
                    <li><a href="/usuario"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                    <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                </c:if>
                <c:if test="${not empty usuario}">
                    <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout, ${usuario.nome}</a></li>
                </c:if>
			</ul>
		</div>
	</nav>