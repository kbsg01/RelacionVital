<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isErrorPage="true" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                        crossorigin="anonymous"></script>
                    <!-- Bootstrap -->
                    <!--font-->
                    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
                    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Montserrat:ital,wght@1,400;1,700&display=swap"
                        rel="stylesheet">
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Bakbak+One&family=Coda+Caption&family=Courgette&family=Fredoka+One&family=Lobster&family=Merriweather+Sans&family=Paytone+One&family=Permanent+Marker&family=Righteous&family=Rowdies&display=swap"
                        rel="stylesheet">
                    <!--font-->
                    <script src="https://kit.fontawesome.com/6dbc209601.js" crossorigin="anonymous"></script>
                    <!-- Bootstrap -->
                    <link rel="website icon" type="png" href="/img/logo.png">
                    <title>Proyecto Salud Mental</title>
                    <link rel="stylesheet" href="/css/index.css">
                </head>

                <body>
                    <nav class="navbar navbar-expand-lg">
                        <div class="" id="navbarNavDropdown">
                            <div class="nav-item">
                                <a class="navbar-brand navbar-brand2" href="#">Relacion Vital</a>
                            </div>
                            <!-- Menu -->
                            <div class="nav-item">
                                <div id="logo">
                                    <a href="/home"> <img src="/img/logo.png" alt="Logo de Simple Rapport"> </a>
                                </div>
                            </div>
                            <!-- User -->
                            <div class="nav-item">
                                <a class="nav-link d-inline" href="/about"> <i class="fa-sharp fa-solid fa-people-group d-inline"></i> Acerca nosotros</a>
                            </div>
                        </div>
                    </nav>
                    <!-- Navbar -->

                    <!-- Navbar -->
                    <div class="mb">
                        <!-- Carrousel -->

                        <div id="aboutUs" class="alinear">
                            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="/img/emociones.png" class="d-block w-100" alt="...">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="/img/home.png" class="d-block w-100" alt="...">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="/img/bitacora.png" class="d-block w-100" alt="...">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                </div>
                                <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>
                        <!-- Carrousel -->
                        <!-- User Registro/Inicio sesion -->
                        <div class="contaner">
                            <div class="form-box shadow">
                                <div class="button-box">
                                    <div id="elegir"></div>
                                    <button type="button" class="toggle-bn " onclick="login()">Inicio
                                        Sesion</button>
                                    <button type="button" class="tggle-bn " onclick="registro()">Registrar</button>
                                </div>
                                <form id="login" class="dgroup" method="post" action="/login">
                                    <p>
                                        <label class="margintop" for="email">Email:</label>
                                        <input type="text" class="field" type="text" id="email"
                                            name="email" />
                                    </p>
                                    <p>
                                        <label class="margintop" for="password">Contraseña:</label>
                                        <input class="field" type="password" id="password"
                                            name="password" />
                                    </p>
                                    <div class="checkbox">
                                        <input type="checkbox"><span>Recordar Contraseña</span><br>
                                    </div>
                                    <a href="#" class="fuente">Restablecer contraseña</a>
                                    <input type="submit" class="bn" value="Ingresar" />
                                </form>
                                <form:form id="registro" class="group" method="post" action="/register"
                                    modelAttribute="user">
                                    <p class="fuente">
                                        <form:label path="name">Nombre:</form:label>
                                        <form:errors class="text-danger" path="name" />
                                        <form:input placeholder="" class="field" path="name" />
                                    </p>
                                    <p class="fuente">
                                        <form:label class="espacios" path="email">Email:</form:label>
                                        <form:errors class="text-danger" path="email" />
                                        <form:input placeholder="" class="field" type="email" path="email" />
                                    </p>
                                    <p class="fuente">
                                        <form:label class="espacios" path="password">Contraseña:</form:label>
                                        <form:errors class="text-danger" path="password" />
                                        <form:password placeholder="" class="field" path="password" />
                                    </p>
                                    <p class="fuente">
                                        <form:label class="espacios" path="passwordConfirmation">Confirmación de
                                            Contraseña:
                                        </form:label>
                                        <form:password placeholder="" class="field" path="passwordConfirmation" />
                                        <form:errors class="text-danger" path="passwordConfirmation" />
                                    </p>
                                    <input type="submit" class="bn" value="Registrar" />
                                </form:form>
                            </div>
                        </div>
                        <!-- User Registro/Inicio sesion -->

                        <!-- funcion para correr login y registro -->
                        <script>
                            var x = document.getElementById("login");
                            var y = document.getElementById("registro");
                            var z = document.getElementById("elegir");

                            function login() {
                                x.style.left = "50px";
                                y.style.left = "480px";
                                z.style.left = "0px";
                            }
                            function registro() {
                                x.style.left = "-400px";
                                y.style.left = "50px";
                                z.style.left = "120px";
                            }
                        </script>
                        <!-- funcion para correr login y registro -->
                    </div>
                    </div>
                    <section class="">
                        <!-- Footer -->
                        <footer class="text-center text-white" style="background-color: #80b4f0;;">
                            <!-- Grid container -->
                            <div class="container p-0 pb-0">
                                <!-- Section: CTA -->
                                <section class="">
                                    <p class="d-flex justify-content-center align-items-center">
                                        <span class="me-3" style="font-weight: bold; color: black;">¡Para acceder a las
                                            funciones puedes registrarte! </span>
                                    </p>
                                </section>
                                <!-- Section: CTA -->
                            </div>
                            <!-- Grid container -->

                            <!-- Copyright -->
                            <div class="text-center p-1"
                                style="background-color: #add3fd; font-weight: bold; color: black; ">
                                © 2022 Copyright:
                                <a class="text-white" href="http://localhost:8080/">RelacionVital.cl</a>
                            </div>
                            <!-- Copyright -->
                        </footer>
                        <!-- Footer -->
                    </section>
                </body>

                </html>