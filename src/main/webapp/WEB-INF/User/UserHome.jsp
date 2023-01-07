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
                    <link rel="stylesheet" href="/css/user.css">
                    <title>Document</title>
                </head>

                <body>
                    <!-- navbar -->
                    <div id="content">
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
                                                    <li><a class="dropdown-item" href="/emociones">Mi Calendario</a>
                                                    </li>
                                                    <!-- Agregar pagina -->

                                                    <!-- Listos (27-12-22) -->
                                                    <li><a class="dropdown-item" href="/bitacora">Mi Bitácora</a></li>
                                                    <li><a class="dropdown-item" href="/tareas">Mis Tareas</a></li>
                                                    <!-- Listos (27-12-22) -->

                                                    <!-- Probando funcionalidad -->
                                                    <li><a class="dropdown-item" href="/meds">Mis Medicamentos</a></li>
                                                    <li><a class="dropdown-item" href="/about">Sobre Nosotros</a></li>
                                                    <!-- Probando funcionalidad -->
                                                </ul>
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
                                                    <li><a class="btn btn-light dropdown-item" href="/logout">Cerrar Sesión</a></li>
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
                        <!------titulo-->
                        <h1>Informacion de la cuenta</h1>
                        <!---titulo -->
                        <!-- foto perfil --> <!-- style="width: 40%; height: 40%;" -->
                        <div class="container">
                            <form:form method="post" action="/account/perfil/photo" modelAttribute="user"
                                enctype="multipart/form-data">
                                <img class="mx-4 foto" src="${user.imgRoute}" alt="${users.imgRoute}">
                                <input type="file" class="form-control bottom" id="inputGroupFile02"
                                    name="photoProfile">
                                <button class="input-group-text boton1" for="inputGroupFile02">Save</button>
                            </form:form>
                        </div>
                        <!-- foto perfil -->
                        <!-- informacion de la cuenta  class="informacion"-->
                        <div class="contenedor">
                            <div class="bloque">
                                <div class="casilla">
                                    <h2>Cambiar Nombre</h2>
                                    <form:form method="post" action="/account/perfil/name" modelAttribute="user">
                                        <p class="input-group">
                                            <form:label class="input-group-text " path="name">Nombre:</form:label>
                                            <form:input class="form-control " placeholder="Name" path="name" />
                                        </p>
                                        <br>
                                        <input class="input-group-text boton" for="inputGroupFile02" type="submit"
                                            value="Guardar" />
                                    </form:form>
                                </div>
                            </div>
                            <div class="bloque2">
                                <div class="casilla">
                                    <h2>Cambiar Email</h2>
                                    <form:form method="post" action="/account/perfil/email" modelAttribute="user">
                                        <p class="input-group">
                                            <form:label class="input-group-text" path="email">Email:</form:label>
                                            <form:input class="form-control" placeholder="Email" type="email"
                                                path="email" />
                                        </p>
                                        <br>
                                        <input class="input-group-text boton" for="inputGroupFile02" type="submit"
                                            value="Guardar" />
                                    </form:form>
                                </div>
                            </div>
                            <div class="bloque3">
                                <div class="contorno">
                                    <h2 class="password">Cambiar Contraseña</h2>
                                    <form:form method="post" action="/account/perfil/password" modelAttribute="user">
                                        <div class="casillados">
                                            <p class="input-group ">
                                                <form:label class="input-group-text" path="password">Contraseña:
                                                </form:label>
                                                <form:password class="form-control" placeholder="Password"
                                                    path="password" />
                                            </p>
                                        </div>
                                        <div class="casillatres">
                                            <p class="input-group ">
                                                <form:label class="input-group-text " path="passwordConfirmation">
                                                    Confirmación de
                                                    Contraseña:</form:label>
                                                <form:password class="form-control" placeholder="PasswordConfirmation"
                                                    path="passwordConfirmation" />
                                            </p>
                                        </div>
                                        <br>
                                        <input class="input-group-text boton2" for="inputGroupFile02" type="submit"
                                            value="Guardar" />
                                    </form:form>
                                </div>
                            </div>
                            <div>
                                <!-- informacion de la cuenta -->
                                <a class="btn btn-danger borrar"
                                    href="/account/perfil/${users.id}/delete">Delete</a>
                            </div>
                        </div>
                    </div>

                </body>

                </html>