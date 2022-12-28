<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Bootstrap -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                crossorigin="anonymous"></script>
            <!-- Bootstrap -->
            <title>Proyecto Salud Mental Home</title>
            <link rel="stylesheet" href="/css/home.css">
        </head>

        <body>
            <!-- navbar -->
            <nav class="navbar navbar-expand-lg d-flex justify-content-between">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <!-- Menu -->
                            <li class="nav-item">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    Menu
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- Agregar pagina -->
                                    <li><a class="dropdown-item" href="/calendario">Mi Calendario</a></li>
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
                            </li>
                            </li>
                            <!-- Menu -->
                            <li class="nav-item">

                                <a href="/home">
                                    <img class="logo" src="/img/logo.png"
                                        alt="Dibujo del logo del proyecto, contiene un zorrito">
                                </a>
                            </li>
                            <!-- User -->
                            <li class="nav-item">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    <c:out value="${user.name}" />
                                </a>
                                <!-- desplegable -->
                                <ul class="dropdown-menu">
                                    <!-- Agregar perfil de usuario (no urgente) -->
                                    <li><a class="dropdown-item" href="#">Perfil</a></li>
                                    <li><a class="btn btn-light" href="/logout">Cerrar Sesion</a></li>
                                </ul>
                                <!-- desplegable -->
                            </li>
                            </li>
                            <!-- User -->
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- navbar -->
            <!-- Publicidad -->
            <div id="content">
                <div class="container text-center">
                    <div class="row align-items-center">
                        <div class="col publicidad">
                            publicidad
                        </div>
                    </div>
                </div>
                <!-- Publicidad -->
                <main>
                    <!-- carousel -->
                    <div id="tips">
                        <!-- Carrousel -->
                        <div id="carouselExampleCaptions" class="carousel slide">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                    aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                    aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner tips">
                                <div class="carousel-item active">
                                    <img src="" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide label</h5>
                                        <p>Some representative placeholder content for the first slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item ">
                                    <img src="" class="d-block w-100 " alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide label</h5>
                                        <p>Some representative placeholder content for the second slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="" class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide label</h5>
                                        <p>Some representative placeholder content for the third slide.</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon sig" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                <span class="carousel-control-next-icon sig" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                        <!-- carousel -->
                    </div>
                </main>
                <!-- Tareas Pendientes -->
                <div clas="row alinear">
                    <div class="col-6 tareas ">
                        <h3>Tareas Pendientes</h3>
                        <c:forEach items="${tareas}" var="tarea">
                            <p>
                                <c:out value="${tarea.task}" />
                            </p>
                        </c:forEach>
                    </div>
                    <!-- Tareas Pendientes -->
                    <!-- Numero de emergencia -->
                    <div class="caja">
                        <div class=" box alinear ">
                            <div class="numeros">
                                <div class="card">
                                    <div class="card-body">
                                        <p class="bold">Salud Responde:
                                            <br>
                                            600 360 7777 (opción 1)
                                            <br>
                                        <p>Línea especial de atención psicológica y contención emocional.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="numeros">
                                <div class="card">
                                    <div class="card-body">
                                        <p class="bold">Fundación de las Familias y Primera Dama.
                                            <br>Whatsapp de Apoyo Emocional
                                            <br>
                                            +569 3710 0023
                                            <br>
                                        <p>Atención en línea de sicólogos a través de whatsapp.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Numero de emergencia -->
                </div>
        </body>
        </html>