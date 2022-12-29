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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <title>Tareas</title>
    <link rel="stylesheet" href="/css/tarea.css">
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
                            <a class="nav-link dropdown-toggle" href="#"   data-bs-toggle="dropdown"  aria-expanded="false">
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
                            <img class="logo" src="/img/logo.png" alt="Dibujo del logo del proyecto, contiene un zorrito">
                        </a>
                    </li>
                    <!-- User -->
                    <li class="nav-item">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"  aria-expanded="false">
                                <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
                                <c:out value="${user.name}"/>
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

    <!-- Tablas -->
    <div class="pending">
        <h2>Tareas</h2>
        <table>
            <thead>
                <tr>
                    <th>completar</th>
                    <th>fecha limite</th>
                    <th>tarea</th>
                    <th>fecha creacion</th>
                    <th>editar</th>
                    <th>eliminar</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${tarea.complete == '0'}">
                        <c:forEach items="${tareas}" var="tarea">
                            <tr>
                                <td>
                                    <a href="/tareas/${tarea.id}/complete" onclick="return confirm('¿Quiere     completar esta tarea?')"> Completar </a>
                                </td>

                                <td>
                                    <fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${tarea.deadline}" />
                                </td>
                                <td>
                                    <c:out value="${tarea.task}"/>
                                </td>
                                <td>
                                    <fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${tarea.createdAt}" />
                                </td>
                                <td>
                                    <a href="/tareas/${tarea.id}/edit"> Editar </a>
                                </td>
                                <td>

                                    <a href="/tareas/${tarea.id}/delete" onclick="return confirm('¿Quiere eliminar  esta tarea?')"> X </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p>No hay tareas por completar</p>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
    <div class="complete">
        <h2>Completadas</h2>
        <table>
            <thead>
                <tr>
                    <th>fecha limite</th>
                    <th>Tarea</th>
                    <th>fecha creacion</th>
                    <th>-</th>
                </tr>
            </thead>
            <tbody>
                <!-- Forma 1 -->
                <!-- Muestra todas las tareas sin importar si estan completas o no -->
                <!-- <c:choose>
                    <c:when test="${tarea.complete == '1'}">
                        <c:forEach items="${tareas}" var="tarea">
                            <tr>
                                <td>
                                    <fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${tarea.deadline}" />
                                </td>
                                <td>
                                    <c:out value="${tarea.task}"/>
                                </td>
                                <td>
                                    <fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${tarea.createdAt}" />
                                </td>
                                <td>
                                    <a href="/tareas/${tarea.id}/delete"> X </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <p>No hay tareas completadas</p>
                    </c:otherwise>
                </c:choose> -->

                <!-- Forma 2 -->
                <!-- No muestra tareas completadas -->
                <!-- <c:if test = "${tarea.complete == true}">
                    <c:forEach items="${tareas}" var="tarea">
                        <tr>
                            <td>
                                <fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${tarea.deadline}" />
                            </td>
                            <td>
                                <c:out value="${tarea.task}"/>
                            </td>
                            <td>
                                <fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${tarea.createdAt}" />
                            </td>
                            <td>
                                <a href="/tareas/${tarea.id}/delete"> X </a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if> -->
            </tbody>
        </table>
    </div>
    <!-- Tablas -->

    <!-- Crear/Editar -->
    <a href="/tareas/new">Añadir Tarea</a>
    <!-- Crear/Editar -->
</body>
</html>