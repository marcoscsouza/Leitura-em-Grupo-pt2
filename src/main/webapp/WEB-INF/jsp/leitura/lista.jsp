<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/tables.css"  type="text/css">

<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Leituras</title>
</head>
<body>

	<div class="row">
        <div class="col-md-12">
            <c:import url="/WEB-INF/jsp/menu.jsp"/>
        </div>
    </div>

	<div class="container-fluid" style="padding-top: 100px;">
        <div class="row">
            <div class="col-md-12">
		        <h1 class="text-center">Lista de Leituras</h1>
            </div>

            <form action="/leitura" method="get">
                <c:if test="${not empty mensagem}">
                    <div class="col-md-6 align-items-center">
                        <div class="alert alert-success ">
                            <strong>Sucesso!</strong> ${mensagem}
                        </div>
                    </div>
                </c:if>
                <button type="submit" class="btn btn-primary" >Cadastrar</button>
            </form>
        </div>

        <div class="row">
            <div class="col-md-12">
		        <c:if test="${empty leituras}">
                    <h5>Não existe leituras cadastradas!</h5>
                </c:if>
            </div>
        </div>

        <div class="row" style="padding-top: 50px;">
            <div class="col-md-12">
		        <c:if test="${not empty leituras}">
			        <h5>Quantidade de leituras cadastradas: ${leituras.size()}!</h5>
                        <table class="table table-dark table-borderless table-hover table-responsive">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Detalhes</th>
                                    <th>Data de Registro</th>
                                    <th>Presencial</th>

                                    <th>Grupo</th>
                                    <th>Literaturas</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="l" items="${leituras}">
                                    <tr>
                                        <td>${l.id}</td>
                                        <td>${l.detalhes}</td>
                                        <td>${l.dataRegistro}</td>
                                        <td>
                                            <c:if test="${l.presencial}">
                                                <i class="fi fi-rr-check"></i>
                                            </c:if>
                                            <c:if test="${not l.presencial}">
                                                <i class="fi fi-rr-cross"></i>
                                            </c:if>
                                        </td>
                                        <td>${l.grupo.nomeResponsavel}</td>
                                        <td>${l.literaturas.size()}</td>

                                        <td> <button class="btn btn-danger" onclick="window.location.href='/leitura/${l.id}/excluir'"> Excluir </button></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                </div>
            </div>
	    </div>
</body>
</html>
