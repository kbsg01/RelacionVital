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
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/e387add1aa.js" crossorigin="anonymous"></script>
    <!-- font awesome -->
    <!-- CSS -->
    <link rel="stylesheet" href="/css/showBitacora.css">
    <!-- CSS -->
    <!----------->
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
    <link rel=" preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Montserrat:ital,wght@1,400;1,700&display=swap"
        rel="stylesheet">
    <!------------>
    <link rel="website icon" type="png" href="/img/logo.png">

    <title>
        <c:out value="${bitacora.title}" />
    </title>
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
                            <a id="menu" class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">
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
                            <a href="/home"> <img src="/img/logo.png" alt="Logo de Relación Vital">
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
                                <li><a class="btn btn-light" href="/logout">Cerrar Sesión</a></li>
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
    <div id = "content">
        <div id = regresar>
            <a href="/bitacora"> <- Regresar </a>
        </div>
            <!-- Título -->
            <div id="title" class="shadow">
                <h1 class="cout"><c:out value="${bitacora.title}" /></h1>
            </div>
        <!-- bitácora -->
        <div id="bitacora">
            <!-- Fechas -->
            <h3 class="fondo shadow"
            >Fecha: <fmt:formatDate pattern="dd 'de' MMMM 'del' yyyy" value="${bitacora.dateTime}" />
            </h3>
            <h6 class="fondo shadow"> Fecha de publicación:
                <fmt:formatDate pattern="dd 'de' MMMM 'del' yyyy" value="${bitacora.createdAt}" />
            </h6>
            <!-- Entrada -->
            <div id="entrada" class="shadow">
                <p class="texto"> <c:out value="${bitacora.entrada}" /> </p>
                
            </div>
        </div>
        <!-- bitácora -->
        <!-- editar -->
        <div id="editar" class="alinear">
            <a href="/bitacora/${bitacora.id}/edit"> <i
                    class="link-info fa-solid fa-pen-to-square fa-5x"></i> </a>
        </div>
        <!-- editar -->
        <!-- borrar -->
        <div id="borrar" class="alinear">
            <a href="/bitacora/${bitacora.id}/delete" href="/tareas/${tarea.id}/delete" onclick="return confirm('¿Está seguro de que quiere eliminar esta bitácora?')"> <i
                    class="link-danger fa-solid fa-trash fa-5x"></i> </a>
        </div>
        <!-- borrar -->
    </div>
    <footer class="text-center text-white color" style="background-color: #80b4f0;">
        <!-- Grid container -->
        <div class="container pt-2 mt-5">
            <!-- Section: Social media -->
            <section class="mb-2">
                <!-- Facebook -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href= role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-facebook-f"></i></a>

                <!-- Twitter -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href= role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-twitter"></i></a>

                <!-- Google -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href= role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-google"></i></a>

                <!-- Instagram -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href= role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-instagram"></i></a>

                <!-- Linkedin -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href= role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-linkedin"></i></a>
                <!-- Github -->
                <a class="btn btn-link btn-floating btn-lg text-dark m-1" href=https://github.com/kbsg01/ProyectoSaludMental role="button"
                    data-mdb-ripple-color="dark"><i class="fab fa-github"></i></a>
            </section>
            <!-- Section: Social media -->
        </div>
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-centerext-dark p-1 fo" style="background-color: #add3fd; font-weight: bold;">
            © 2022 Copyright:
            <a class="text-dark" href="http://localhost:8080/">RelacionVital.cl</a>
        </div>
        <!-- Copyright -->
    </footer>
</body>
</html>