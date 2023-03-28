<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Grupo de leitura</title>
            <link rel='stylesheet'
                href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>

            <link rel="stylesheet" href="css/home.css" type="text/css">

        </head>

        <!-- https://elasticbeanstalk-us-east-1-432335396377.s3.amazonaws.com/Logos/LeituraEmGrupo/pexels-olga-lioncat-7244562.jpg -->

        <body>

            <c:if test="${not empty usuario}">
                <c:import url="/WEB-INF/jsp/menu.jsp" />
            </c:if>


            <!-- ============================================ BANNER ========================================================= -->

            <section>
                <div id="img-bg"
                    style="height: 600px;background-image: url(https://elasticbeanstalk-us-east-1-432335396377.s3.amazonaws.com/Logos/LeituraEmGrupo/pexels-olga-lioncat-7244562.jpg);background-position: center;background-size: cover;">
                    <div class="container h-100">
                        <div class="row h-100">
                            <div
                                class="col-md-6 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-center">
                                <div id="text-bg" class="shadow p-3" style="max-width: 350px;">
                                    <h1 class="text-uppercase fw-bold" id="font-title">LEITURA EM GRUPO<br /></h1>
                                    <p class="my-3" id="font-title">Seu grupo de leitura sempre organizado e antenado
                                        com a comunidade de leitores.</p>
                                    <c:if test="${empty usuario}">
                                        <a class="btn btn-light btn-lg me-2" role="button" href="/usuario">Cadastrar</a>
                                        <a class="btn btn-outline-light btn-lg" role="button" href="/login">Entrar</a>
                                    </c:if>
                                    <c:if test="${not empty usuario}">
                                        <a class="btn btn-light btn-lg me-2" role="button" href="/grupo">Criar grupo</a>
                                        <a class="btn btn-outline-light btn-lg" role="button" href="/grupo/listar">Meus
                                            grupos</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- ============================================= FEATURES =========================================================== -->

            <div class="container py-4 py-xl-5 shadow-sm p-3">
                <h1>Características</h1>
                <div class="row row-cols-1 row-cols-md-2 ">
                    <div class="col ">
                        <img class="rounded w-100 h-100 fit-cover shadow p-3"
                            style="min-height: 300px; border-radius: 10px;"
                            src="https://elasticbeanstalk-us-east-1-432335396377.s3.amazonaws.com/Logos/LeituraEmGrupo/pessoas+lendo.jpg" />
                    </div>

                    <div class="col d-flex flex-column justify-content-center p-4">
                        <div id="cart"
                            class="text-center text-md-start d-flex flex-column align-items-center align-items-md-start mb-5 shadow p-3">
                            <div class="btn btn-dark" id="icon-bt">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-at" viewBox="0 0 16 16">
                                    <path
                                        d="M13.106 7.222c0-2.967-2.249-5.032-5.482-5.032-3.35 0-5.646 2.318-5.646 5.702 0 3.493 2.235 5.708 5.762 5.708.862 0 1.689-.123 2.304-.335v-.862c-.43.199-1.354.328-2.29.328-2.926 0-4.813-1.88-4.813-4.798 0-2.844 1.921-4.881 4.594-4.881 2.735 0 4.608 1.688 4.608 4.156 0 1.682-.554 2.769-1.416 2.769-.492 0-.772-.28-.772-.76V5.206H8.923v.834h-.11c-.266-.595-.881-.964-1.6-.964-1.4 0-2.378 1.162-2.378 2.823 0 1.737.957 2.906 2.379 2.906.8 0 1.415-.39 1.709-1.087h.11c.081.67.703 1.148 1.503 1.148 1.572 0 2.57-1.415 2.57-3.643zm-7.177.704c0-1.197.54-1.907 1.456-1.907.93 0 1.524.738 1.524 1.907S8.308 9.84 7.371 9.84c-.895 0-1.442-.725-1.442-1.914z" />
                                </svg>
                            </div>
                            <div>
                                <h4>Compartilhamento</h4>
                                <p>Compartilhe suas experiências e gostos com toda a comunidade.</p>
                                <a id="hyper-bt" href="#">Learn More
                                    <svg class="bi bi-arrow-right" xmlns="http://www.w3.org/2000/svg" width="1em"
                                        height="1em" fill="currentColor" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z">
                                        </path>
                                    </svg>
                                </a>
                            </div>
                        </div>
                        <div id="cart"
                            class="text-center text-md-start d-flex flex-column align-items-center align-items-md-start mb-5 shadow p-3">
                            <div class="btn btn-dark" id="icon-bt">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-shield-slash-fill" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M1.093 3.093c-.465 4.275.885 7.46 2.513 9.589a11.777 11.777 0 0 0 2.517 2.453c.386.273.744.482 1.048.625.28.132.581.24.829.24s.548-.108.829-.24a7.159 7.159 0 0 0 1.048-.625 11.32 11.32 0 0 0 1.733-1.525L1.093 3.093zm12.215 8.215L3.128 1.128A61.369 61.369 0 0 1 5.073.56C6.157.265 7.31 0 8 0s1.843.265 2.928.56c1.11.3 2.229.655 2.887.87a1.54 1.54 0 0 1 1.044 1.262c.483 3.626-.332 6.491-1.551 8.616zm.338 3.046-13-13 .708-.708 13 13-.707.707z" />
                                </svg>
                            </div>
                            <div>
                                <h4>Segurança</h4>
                                <p>Possuindo o que há de mais seguro no mercado de tecnologia, garantimos segurança
                                    total de suas informações.</p>
                                <a id="hyper-bt" href="#">Learn More
                                    <svg class="bi bi-arrow-right" xmlns="http://www.w3.org/2000/svg" width="1em"
                                        height="1em" fill="currentColor" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z">
                                        </path>
                                    </svg>
                                </a>
                            </div>
                        </div>
                        <div id="cart"
                            class="text-center text-md-start d-flex flex-column align-items-center align-items-md-start shadow p-3">
                            <div class="btn btn-dark" id="icon-bt">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-book" viewBox="0 0 16 16">
                                    <path
                                        d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z" />
                                </svg>
                            </div>
                            <div>
                                <h4>Desemvolvimento</h4>
                                <p>Fazendo contato e conhecendo novas obras, você terá sempre o melhor desenvolvimento
                                    pessoal.</p>
                                <a id="hyper-bt" href="#">Learn More
                                    <svg class="bi bi-arrow-right" xmlns="http://www.w3.org/2000/svg" width="1em"
                                        height="1em" fill="currentColor" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z">
                                        </path>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ================================================ CONTACT ======================================================== -->

            <section class="position-relative py-5">
                <div class="d-md-none">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d386.8304730798775!2d-43.398294064769736!3d-22.72183238758815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2sbr!4v1679869688035!5m2!1spt-BR!2sbr"
                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade">
                    </iframe>
                </div>

                <div class="d-none d-md-block position-absolute top-0 start-0 w-100 h-100">

                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d386.8304730798775!2d-43.398294064769736!3d-22.72183238758815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2sbr!4v1679869688035!5m2!1spt-BR!2sbr"
                        width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade">
                    </iframe>

                </div>
                <div class="position-relative mx-2 my-5 m-md-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-xl-5 col-xxl-4 offset-md-6 offset-xl-7 offset-xxl-8">
                                <div>
                                    <form class="border rounded shadow p-3 p-md-4 p-lg-5" action="/" method="get"
                                        style="background: var(--bs-body-bg);">
                                        <h3 class="text-center mb-3">Contact us</h3>
                                        <div class="mb-3"><input class="form-control" type="text" name="name"
                                                placeholder="Name" /></div>
                                        <div class="mb-3"><input class="form-control" type="email" name="email"
                                                placeholder="Email" /></div>
                                        <div class="mb-3"><textarea class="form-control" name="message"
                                                placeholder="Message" rows="6"></textarea></div>
                                        <div class="mb-3"><button class="btn btn-primary" type="submit">Enviar </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- =============================================== FOOTER =========================================================== -->

            <c:import url="/WEB-INF/jsp/footer.jsp" />


        </body>

        </html>