<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <title>Proyecto Salud Mental Home</title>
    <link rel="stylesheet" href="/css/bitacora.css">
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
                    <a id="menu" class="nav-link dropdown-toggle" href="#"   data-bs-toggle="dropdown"  aria-expanded="false">
                        Menú
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
                </div>
            </div>
            <!-- Menu -->
            <div class="nav-item">
                <div id="logo">
                    <a href="/home"> <img src="/img/logo.png" alt="Logo de Simple Rapport"> </a>
                </div>
            </div>
            <!-- User -->
            <div class="nav-item">
                <div class="nav-item dropdown usuario">
                    <a class="nav-link dropdown-toggle" id="perfil" href="#" data-bs-toggle="dropdown"  aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="mdo" width="55" height="55" class="rounded-circle">
                        <c:out value="${user.name}"/>
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

            <div class="title"><h1>Bitácora</h1></div>

                <div class="fondo">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Fecha</th>
                            <th scope="col">Mis Antecedentes</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${bitacoras}" var="bitacora">
                        <tr>
                                <th scope="row"><fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${bitacora.dateTime}" /></th>
                                <td><c:out value="${bitacora.title}"/></td>
                                <td><span class="material-symbols-outlined"><a href="/bitacora/${bitacora.id}">
                                    <span class="material-symbols-outlined">
                                        menu_book
                                        </span>
                                </a></span></td>
                                <i class="bi bi-justify"></i>
                        </tr>
                    </c:forEach>
                        </tbody>
                    </table>
                    <a href="/bitacora/new">Crea una entrada</a>
                </div>
            </main>    
        </body>
        </html>