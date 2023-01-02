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
                    <title>Nueva Tarea</title>
                    <link rel="stylesheet" href="/css/tareaCreateEdit.css">
                </head>

                <body>

                    <!-- navbar -->
                    <nav class="navbar navbar-expand-lg">
                        <div class="container-fluid">
                            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <!-- Menu -->
                                    <li class="nav-item">
                                    <li class="nav-item dropdown">
                                        <a id="menu" class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
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
                                        <div id="logo">
                                            <a href="/home"> <img src="/img/logo.png" alt="Logo de Simple Rapport"> </a>
                                        </div>
                                    </li>
                                    <!-- User -->
                                    <li class="nav-item">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" id="perfil" href="#"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32"
                                                class="rounded-circle">
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
                                                        <form:label class="font1" path="deadline"> Fecha Limite:</form:label>
                                                        <form:errors path="deadline" /><br>
                                                        <form:input type="date" class="form-control text-left mr-2"
                                                            path="deadline" />
                                                    </p>
                                                    <p class="task">
                                                        <form:label class="font" path="task">Tarea:</form:label>
                                                        <form:errors path="task" />
                                                    <div class="form-outline">
                                                        <textarea class="form-control" id="task" name="task"
                                                            rows="6"></textarea>
                                                        <label class="form-label" for="textAreaExample2"></label>
                                                    </div>
                                                    </p>
                                                    <div class="boton">
                                                        <input class="btn btn-lg btn-primary" type="submit" value="+">
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
                    <div class="publicidad">
                        <div class="container text-center">
                            <div class="row align-items-center">
                                <div class="col">
                                    publicidad
                                </div>
                            </div>
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
                </body>

                </html>