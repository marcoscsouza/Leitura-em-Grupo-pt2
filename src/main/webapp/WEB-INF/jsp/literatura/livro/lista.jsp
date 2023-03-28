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
            <title>Livros</title>
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
                        <h1 class="text-center">Lista de Livros</h1>
                    </div>

                    <form action="/livro" method="get">
                        <c:if test="${not empty mensagem}">
                            <div class="col-md-6">
                                <div class="alert alert-success">
                                    <strong>Sucesso!</strong> ${mensagem}
                                </div>
                            </div>
                        </c:if>
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                    </form>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <c:if test="${empty livros}">
                            <h5>N�o existe livros cadastrados!</h5>
                        </c:if>
                    </div>
                </div>

                <div class="row" style="padding-top: 50px;">
                    <div class="col-md-12">
                        <c:if test="${not empty livros}">
                            <h5>Quantidade de livros cadastrados: ${livros.size()}!</h5>
                            <table class="table table-dark table-borderless table-hover table-responsive">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Titulo</th>
                                        <th>Autor</th>
                                        <th>Ano da publica��o</th>
                                        <th>Valor</th>
                                        <th>G�nero</th>
                                        <th>Possui Tradu��o</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="l" items="${livros}">
                                        <tr>
                                            <td>${l.id}</td>
                                            <td>${l.titulo}</td>
                                            <td>${l.autor}</td>
                                            <td>${l.anoPublicado}</td>
                                            <td class="preco">${l.valor}</td>
                                            <td>${l.genero}</td>
                                            <td>
                                                <c:if test="${l.traduzido}">
                                                    <i class="fi fi-rr-check"></i>
                                                </c:if>
                                                <c:if test="${not l.traduzido}">
                                                    <i class="fi fi-rr-cross"></i>
                                                </c:if>
                                            </td>
                                            <td> <button class="btn btn-danger"
                                                    onclick="window.location.href='/livro/${l.id}/excluir'"> Excluir
                                                </button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                    </div>
                </div>
            </div>

            <script>
                const precos = document.querySelectorAll('.preco');
                precos.forEach((preco) => {
                    preco.textContent = "R$: " + parseFloat(preco.textContent).toFixed(2);
                });
            </script>

        </body>

        </html>