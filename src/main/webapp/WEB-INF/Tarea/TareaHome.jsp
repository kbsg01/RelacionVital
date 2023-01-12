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
    <!-- Bootstrap -->
    <!-- CSS Bootstrap Table -->
    <link rel="stylesheet"
        href="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.css">
    <!-- CSS Bootstrap Table -->
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/e387add1aa.js" crossorigin="anonymous"></script>
    <!----------->
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
    <link rel=" preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Montserrat:ital,wght@1,400;1,700&display=swap"
        rel="stylesheet">
    <!------------>
    <title>Tareas</title>
    <link rel="stylesheet" href="/css/tarea.css">
</head>
<body>
    <div id="content">
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
                                    <li><a class="dropdown-item" href="/bitacora">Mi Bitácora</a>
                                    </li>
                                    <li><a class="dropdown-item" href="/tareas">Mis Tareas</a></li>
                                    <!-- Listos (27-12-22) -->
                                    <!-- Agregar pagina -->
                                    <li><a class="dropdown-item" href="/meds">Mis Medicamentos</a>
                                    </li>
                                    <li><a class="dropdown-item" href="/about">Sobre Nosotros</a>
                                    </li>
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
                                <a href="/home"> <img src="/img/logo.png"
                                        alt="Logo de Simple Rapport"> </a>
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
                                    <li><a class="dropdown-item" href="/account/perfil">Perfil</a>
                                    </li>
                                    <li><a class="dropdown-item" href="/logout">Cerrar Sesión</a>
                                    </li>
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
        <!-- Crear/Editar -->
        <div id="nuevo">
            <a href="/tareas/new">+ Añadir Tarea</a>
        </div>
        <!-- Crear/Editar -->
        <div id="title" class="shadow">
            <h1>Mis Tareas</h1>
        </div>
        <div id="mainContent">
            <!-- Tablas -->
            <div id="tareas" class="shadow">
                <h2>En progreso</h2>
                <table class="table" data-toggle="table" data-pagination="true" data-search="true">
                    <thead>
                        <tr>
                            <th data-width="200">Completar</th>
                            <th data-width="200" data-field="deadline" data-sortable="true"
                                data-sort-name="deadline" data-sort-order="desc">Fecha Limite</th>
                            <th>Tarea</th>
                            <th data-width="200" data-field="fecha" data-sortable="true"
                                data-sort-name="fecha" data-sort-order="desc">Fecha Creación</th>
                            <th data-width="150">Editar</th>
                            <th data-width="150">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${tareas}" var="tarea">
                            <c:if test="${tarea.complete == false}">
                                <tr>
                                    <td>
                                        <a href="/tareas/${tarea.id}/complete">
                                            <i class="link-success fa-solid fa-circle-check"> </i>
                                        </a>
                                    </td>
                                    <td>
                                        <fmt:formatDate pattern="dd 'de' MMMM 'del' yyyy"
                                            value="${tarea.deadline}" />
                                    </td>
                                    <td>
                                        <c:out value="${tarea.task}" />
                                    </td>
                                    <td>
                                        <fmt:formatDate pattern="dd 'de' MMMM 'del' yyyy"
                                            value="${tarea.createdAt}" />
                                    </td>
                                    <td>
                                        <a href="/tareas/${tarea.id}/edit"> <i
                                                class="link-info fa-solid fa-pen-to-square"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="/tareas/${tarea.id}/delete"
                                            onclick="return confirm('¿Está seguro de que quiere eliminar esta tarea?')">
                                            <i class="link-danger fa-solid fa-trash"></i> </a>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div id="completadas" class="shadow">
                <h2>Completadas</h2>
                <table class="table" data-toggle="table" data-pagination="true" data-search="true">
                    <thead>
                        <tr>
                            <th data-width="200">Quitar</th>
                            <th data-width="200" data-field="deadline" data-sortable="true"
                                data-sort-name="deadline" data-sort-order="desc">Fecha Limite</th>
                            <th>Tarea</th>
                            <th data-width="200" data-field="fecha" data-sortable="true"
                                data-sort-name="fecha" data-sort-order="desc">Fecha Creación</th>
                            <th data-width="150">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${tareas}" var="tarea">
                            <c:if test="${tarea.complete == true}">
                                <tr>
                                    <td>
                                        <a href="/tareas/${tarea.id}/incomplete">
                                            <i class="link-warning fa-solid fa-circle-xmark"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <fmt:formatDate pattern="dd 'de' MMMM 'del' yyyy"
                                            value="${tarea.deadline}" />
                                    </td>
                                    <td>
                                        <c:out value="${tarea.task}" />
                                    </td>
                                    <td>
                                        <fmt:formatDate pattern="dd 'de' MMMM 'del' yyyy"
                                            value="${tarea.createdAt}" />
                                    </td>
                                    <td>
                                        <a href="/tareas/${tarea.id}/delete"> <i
                                                class="link-danger fa-solid fa-trash"></i> </a>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- Tablas -->
            <div class="publicidad shadow">
                publicidad
            </div>
        </div>
        <!-- Bootstrap Table -->
        <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-table@1.21.2/dist/bootstrap-table.min.js"></script>
        <!-- Bootstrap Table -->
</body>
</html>