<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isErrorPage="true" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <meta charset="UTF-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <!-- Bootstrap -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                            crossorigin="anonymous">
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                            crossorigin="anonymous"></script>
                        <!-- Bootstrap -->
                        <!----------->
                        <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
                        <link rel=" preconnect" href="https://fonts.gstatic.com/" crossorigin>
                        <link
                            href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Montserrat:ital,wght@1,400;1,700&display=swap"
                            rel="stylesheet">
                        <!------------>
                        <script src="https://kit.fontawesome.com/6dbc209601.js" crossorigin="anonymous"></script>
                        <link rel="stylesheet" href="/css/tareaCreateEdit.css">
                        <link rel="website icon" type="png" href="/img/logo.png">
                        <title>Nueva Tarea</title>
                    </head>

                    <body>
                        <!-- navbar -->
                        <nav class="navbar navbar-expand-lg">
                            <div class="">
                                <div class="" id="navbarNavDropdown">
                                    <div class="">
                                        <!-- Menu -->
                                        <div class="nav-item">
                                            <div class="nav-item dropdown">
                                                <a id="menu" class="nav-link dropdown-toggle" href="#"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    Menú
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <!-- Agregar pagina -->
                                                    <li><a class="dropdown-item" href="/emociones">Mis Emociones</a>
                                                    </li>
                                                    <!-- Agregar pagina -->
                                                    <!-- Listos (27-12-22) -->
                                                    <li><a class="dropdown-item" href="/bitacora">Mi Bitácora</a></li>
                                                    <li><a class="dropdown-item" href="/tareas">Mis Tareas</a></li>
                                                    <!-- Listos (27-12-22) -->
                                                    <!-- Agregar pagina -->
                                                    <li><a class="dropdown-item" href="/meds">Mis Medicamentos</a></li>
                                                    <li><a class="dropdown-item" href="/about">Sobre Nosotros</a></li>
                                                    <!-- Agregar pagina -->
                                                </ul>
                                            </div>
                                            <div class="nav-item">
                                                <a class="navbar-brand navbar-brand2" href="#">Relacion Vital</a>
                                            </div>
                                        </div>
                                        <!-- Menu -->
                                        <div class="nav-item">
                                            <div id="logo">
                                                <a href="/home"> <img src="/img/logo.png" alt="Logo de Simple Rapport">
                                                </a>
                                            </div>
                                        </div>
                                        <!-- User -->
                                        <div class="nav-item">
                                            <div class="nav-item dropdown usuario">
                                                <a class="nav-link dropdown-toggle" id="perfil" href="#"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    <img src="${user.imgRoute}" alt="mdo" width="55" height="55"
                                                        class="rounded-circle">
                                                    <c:out value="${user.name}" />
                                                </a>
                                                <!-- desplegable -->
                                                <ul class="dropdown-menu sombra">
                                                    <!-- Agregar perfil de usuario (no urgente) -->
                                                    <li><a class="dropdown-item" href="/account/perfil">Perfil</a></li>
                                                    <li><a class="dropdown-item" href="/logout">Cerrar Sesión</a></li>
                                                </ul>
                                                <!-- desplegable -->
                                            </div>
                                        </div>
                                        <!-- User -->
                                    </div>
                                </div>
                            </div>
                        </nav>
                        <!-- Navbar -->
                        <div id="content">

                                <div class="cajon">
                                    <!-- Crear/Editar -->
                                    <div class="titulo">
                                        <h1>Panel de Tarea</h1>
                                    </div>
                                    <div class="crearEditar">
                                        <div>
                                            <form:form action="" method="post" modelAttribute="tarea">
                                                <form autocomplete="off">
                                                    <div class="col-lg-6 col-11 px-1">
                                                        <div class="input-group input-daterange tarea">
                                                            <p class="fecha">
                                                                <form:label class="font1" path="deadline"> Fecha Limite:
                                                                </form:label>
                                                                <form:errors path="deadline" /><br>
                                                                <form:input type="date"
                                                                    class="form-control text-left mr-2"
                                                                    path="deadline" />
                                                            </p>
                                                            <p class="task">
                                                                <form:label class="font" path="task">Tarea:</form:label>
                                                                <form:errors path="task" />
                                                            <div class="form-outline">
                                                                <textarea class="form-control" id="task" name="task"
                                                                    rows="6"></textarea>
                                                                <label class="form-label"
                                                                    for="textAreaExample2"></label>
                                                            </div>
                                                            </p>
                                                            <div class="">
                                                                <input class="btn btn-lg btn-primary boton"
                                                                    type="submit" value="+">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Crear/Editar -->
                        </div>
                            <div class="burbujas">
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                                <div class="burbuja"></div>
                            </div>
                            <footer class="text-center text-white color" style="background-color: #80b4f0;">
                                <!-- Grid container -->
                                <div class="container pt-1 mt-1">
                                    <!-- Section: Social media -->
                                    <section class="mb-1">
                                        <!-- Facebook -->
                                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
                                            role="button" data-mdb-ripple-color="dark"><i
                                                class="fab fa-facebook-f"></i></a>

                                        <!-- Twitter -->
                                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
                                            role="button" data-mdb-ripple-color="dark"><i
                                                class="fab fa-twitter"></i></a>

                                        <!-- Google -->
                                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
                                            role="button" data-mdb-ripple-color="dark"><i class="fab fa-google"></i></a>

                                        <!-- Instagram -->
                                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
                                            role="button" data-mdb-ripple-color="dark"><i
                                                class="fab fa-instagram"></i></a>

                                        <!-- Linkedin -->
                                        <a class="btn btn-link btn-floating btn-lg text-dark m-1" href="#!"
                                            role="button" data-mdb-ripple-color="dark"><i
                                                class="fab fa-linkedin"></i></a>
                                        <!-- Github -->
                                        <a class="btn btn-link btn-floating btn-lg text-dark m-1"
                                            href="https://github.com/kbsg01/ProyectoSaludMental" role="button"
                                            data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
                                    </section>
                                    <!-- Section: Social media -->
                                </div>
                                <!-- Grid container -->

                                <!-- Copyright -->
                                <div class="text-centerext-dark p-1 fo"
                                    style="background: linear-gradient(90deg, rgb(127, 178, 255), #b9d7ff); font-weight: bold;">
                                    © 2022 Copyright:
                                    <a class="text-dark" style="color: #000000; font-weight: bold;"
                                        href="http://localhost:8080/">RelacionVital.cl</a>
                                </div>
                                <!-- Copyright -->
                            </footer>
                    </body>

                    </html>