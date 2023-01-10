<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <!-- Bootstrap -->
    <title>Proyecto Salud Mental Index</title>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="/">
                            <img class="logo" src="/img/logo.png" alt="Dibujo del logo del proyecto, contiene un zorrito">
                        </a>
                    </li>
                    <li class="nav-item">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#"    role="button" data-bs-toggle="dropdown"    aria-expanded="false">
                                Sobre Nosotros
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Nuestro Equipo</a></li>
                                <li><a class="dropdown-item" href="#">Terminos y Condiciones de Uso</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contacto</a>
                        </li>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main>
        <div id="aboutUs" class="alinear">
            <!-- Carrousel -->
            <div id="carouselExampleCaptions" class="carousel slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://picsum.photos/id/52/600/300" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>First slide label</h5>
                            <p>Some representative placeholder content for the first slide.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://picsum.photos/id/38/600/300" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Some representative placeholder content for the second slide.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://picsum.photos/id/44/600/300" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Some representative placeholder content for the third slide.</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <!-- Carrousel -->

            <!-- Sobre nosotros -->
            <div id="mision">
                <h2>Mision</h2>
                <!-- <p>
                    <c:out value="${errorSesion}"/>
                </p> -->
                <p>
                    Dolor ipsum et ipsum. No amet eos clita duis accusam veniam molestie et dolor sit lorem facilisi placerat sit. Lorem eirmod facilisis eirmod aliquam sit. Wisi lorem qui stet sadipscing aliquyam vero ea et dolores et consequat. Lorem labore et dolor duo takimata sea sea sed diam aliquyam tation. Diam nonumy gubergren sed diam nam no tempor tempor at elitr facilisis justo eos sit. Et eleifend consequat est tempor et tempor est sit accusam. Accumsan lorem amet tation nonumy sanctus sanctus. Labore est sed sed dolore sadipscing nulla kasd sadipscing diam et luptatum in magna takimata magna. Consetetur soluta luptatum tempor ipsum est vero sanctus sed ut tempor accumsan labore lorem. Quis justo amet aliquyam commodo consetetur eos stet sed kasd sit. Aliquyam iusto et vero elitr. Amet nonummy eos diam at amet dolores ipsum ut facer sea hendrerit et gubergren tempor duo. Tincidunt et eum eos. Lorem hendrerit et at sea invidunt minim sit qui facilisis sit sea labore dolor ipsum accumsan tempor amet erat.
                </p>
            </div>
            <div id="vision">
                <h2>Vision</h2>
                <p>
                    Dolore aliquyam nisl vulputate ipsum sed clita volutpat luptatum et enim consetetur lorem sed et esse justo sadipscing. Gubergren et invidunt amet. Vel voluptua rebum clita dolor magna at blandit duis. Accusam sit et adipiscing. Sit eleifend feugiat eirmod ex amet no cum option ipsum nonumy sea erat dolor ut sed amet eirmod stet. Voluptua sed tation. Justo dolor amet ad takimata justo dolore erat wisi tempor consequat no dolor elit. Tempor aliquip vulputate rebum eos vero labore nonumy. Clita duis voluptua clita lorem facilisi erat nihil nonumy sadipscing ipsum odio. Eu sit nulla wisi velit takimata duo magna takimata vero erat et.
                </p>
            </div>
        </div>
        <!-- Sobre nosotros -->
        
        <!-- User Registro/Inicio sesion -->
        <div id="user" class="alinear">
            <div id="userRegister">
                <h1>Registro</h1>
                <form:form method="post" action="/register" modelAttribute="user">
                    <p>
                        <form:label path="name">Nombre:</form:label>
                        <form:errors class="text-danger" path="name"/>
                        <form:input placeholder="Name" class="form-control" path="name"/>
                    </p>
                    <p>
                        <form:label path="email">Email:</form:label>
                        <form:errors class="text-danger" path="email"/>
                        <form:input placeholder="Email" class="form-control" type="email" path="email"/>
                    </p>
                    <p>
                        <form:label path="password">Contraseña:</form:label>
                        <form:errors class="text-danger" path="password"/>
                        <form:password placeholder="Password" class="form-control" path="password"/>
                    </p>
                    <p>
                        <form:label path="passwordConfirmation">Confirmación de Contraseña:</form:label>
                        <form:errors class="text-danger" path="passwordConfirmation"/>
                        <form:password placeholder="PasswordConfirmation" class="form-control" path="passwordConfirmation"/>
                    </p>
                    <input type="submit" value="Register!"/>
                </form:form>
            </div>
            <div id="userLogin">
                <h1>Ingresar</h1>
                <p class="text-danger"><c:out value="${error}"/></p>
                <form method="post" action="/login" >
                    <p>
                        <label for="email">Email:</label>
                        <input placeholder="Email" class="form-control" type="text" id="email" name="email"/>
                    </p>
                    <p>
                        <label for="password">Contraseña:</label>
                        <input placeholder="Password" class="form-control"type="password" id="password" name="password"/>
                    </p>
                    <input type="submit" value="Ingresar"/>
                </form>
            </div>
        </div>
    </main>
</body>
</html>