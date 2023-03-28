<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>

            <link rel="stylesheet" href="css/tables.css" type="text/css">

            <link rel='stylesheet'
                href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
            <meta charset="ISO-8859-1">

            <title>Cadastro de Usu�rio</title>
        </head>

        <body>

            <div class="row">
                <div class="col-md-12">
                    <c:import url="/WEB-INF/jsp/menu.jsp" />
                </div>
            </div>

            <div class="container-fluid" style="padding-top: 100px;">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center">Lista de Usu�rios</h1>
                    </div>

                    <c:if test="${not empty mensagem}">
                        <div class="col-md-6">
                            <div class="alert alert-success">
                                <strong>Sucesso!</strong> ${mensagem}
                            </div>
                        </div>
                    </c:if>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <c:if test="${empty usuarios}">
                            <h5>N�o existe usuarios cadastrados!</h5>
                        </c:if>
                    </div>
                </div>

                <div class="row" style="padding-top: 50px;">
                    <div class="col-md-12">
                        <c:if test="${not empty usuarios}">
                            <h5>Quantidade de usu�rios cadastrados: ${usuarios.size()}!</h5>

                            <table class="table table-dark table-borderless table-hover table-responsive">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nome</th>
                                        <th>Senha</th>
                                        <th>E-mail</th>
                                        <th>Idade</th>
                                        <th>Tipo preferido</th>
                                        <th>N�vel de Leitura</th>
                                        <th>Grupos</th>
                                        <th>Literaturas</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="u" items="${usuarios}">
                                        <tr class="table-active">
                                            <td>${u.id}</td>
                                            <td>${u.nome}</td>
                                            <td>${u.senha}</td>
                                            <td>${u.email}</td>
                                            <td>${u.idade}</td>
                                            <td>${u.tipo}</td>
                                            <td>${u.nivel}</td>
                                            <td>${u.grupos.size()}</td>
                                            <td>${u.literaturas.size()}</td>
                                            <td> <button class="btn btn-danger"
                                                    onclick="window.location.href='/usuario/${u.id}/excluir'"> Excluir
                                                </button></td>
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