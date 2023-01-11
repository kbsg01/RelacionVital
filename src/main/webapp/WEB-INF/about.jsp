<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
            </script>
        <!-- Bootstrap -->
        <!----------->
        <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
        <link rel=" preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&family=Montserrat:ital,wght@1,400;1,700&display=swap"
            rel="stylesheet">
        <!------------>
        <!-- font awesome -->
        <script src="https://kit.fontawesome.com/e387add1aa.js" crossorigin="anonymous"></script>
        <!-- font awesome -->
        <title>Sobre nosotros *Inserte nombre del proyecto*</title>
        <link rel="stylesheet" href="/css/about.css">
    </head>

    <body>
        <!-- navbar Hay que quitar el botón de usuario -->
        <nav class="navbar navbar-expand-lg">
            <div class="">
                <div class="" id="navbarNavDropdown">
                    <div class="">
                        <div class="nav-item">
                            <a class="navbar-brand navbar-brand2" href="#">Relacion Vital</a>
                        </div>
                        <!-- Menu -->
                        <div class="nav-item">
                            <div class="nav-item dropdown">
                                <a href="/" class="btn">Registrarse</a>
                            </div>
                        </div>
                        <!-- Menu -->
                        <div class="nav-item">
                            <div id="logo">
                                <a href="/home"> <img src="/img/logo.png" alt="Logo de Simple Rapport"> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Navbar Hay que quitar el botón de usuario -->
        <div id="top">

            <h1>Quienes somos</h1>

            <p>
                Un equipo de chicos Forge que están estudiando un bootcamp de programación Java
                preocupados por el cuidado y la salud mental que se suele invisivilizar en el mundo
            </p>

        </div>
        <div id="nosotros">
            <div class="miembros alinear shadow">
                <img src="/nosotros/kai.jpg" alt="">
                <h4>Karla Santibañez</h4>
                <p>Encargada del back-end</p>
                <a href="" class="text-decoration-none">linkedin <i class="fa-brands fa-linkedin link-primary"></i> </a>
            </div>

            <div class="miembros alinear shadow">
                <img src="/nosotros/alvaro.jpg" alt="">
                <h4>Alvaro Navarrete</h4>
                <p>Encargado del back-end</p>
                <a href="" class="text-decoration-none">linkedin <i class="fa-brands fa-linkedin link-primary"></i> </a>

            </div>

            <div class="miembros alinear shadow">
                <img src="/nosotros/pacheco.jpg" alt="">
                <h4>Carla Pacheco</h4>
                <p>Encargada del front-end</p>
                <a href="" class="text-decoration-none">linkedin <i class="fa-brands fa-linkedin link-primary"></i> </a>


            </div>
            <div class="miembros alinear shadow">
                <img src="/nosotros/diego.jpg" alt="">
                <h4>Diego Fernandez</h4>
                <p>Encargado del front-end</p>
                <a href="" class="text-decoration-none">linkedin <i class="fa-brands fa-linkedin link-primary"></i> </a>

            </div>

            <div class="miembros alinear shadow">
                <img src="/nosotros/majo.jpg" alt="">
                <h4>Maria José Maldonado</h4>
                <p>Encargada del front-end</p>
                <a href="" class="text-decoration-none">linkedin <i class="fa-brands fa-linkedin link-primary"></i> </a>

            </div>

            <div class="miembros alinear shadow">
                <img src="/nosotros/gordo-zack.jpg" alt="">
                <h4>Zacarías Quiroz González</h4>
                <p>Encargado del front-end</p>
                <a href="" class="text-decoration-none">linkedin <i class="fa-brands fa-linkedin link-primary"></i> </a>
            </div>

        </div>

        <div id="declaraciones">
            <!-- Sobre nosotros -->
            <div id="vision" class="tarjetas alinear shadow">
                <h2>Visión</h2>
                <p>
                    Ser un lugar de apoyo para las personas que sufren de ansiedad, brindando un espacio cómodo
                    y seguro para complementar sus terapias, facilitando la comunicación y fluidez de las sesiones con
                    el usuario y su terapeuta.
                </p>
            </div>
            <div id="mision" class="tarjetas alinear shadow">
                <h2>Misión</h2>
                <p>
                    Entregar una página web simple, con un espacio donde se pueda escribir diferentes registros en
                    diferentes áreas dependiendo de las necesidades entrantes,
                    brindando un panel amigable para escribir sobre eventos cortos del día, narrar un día del usuario,
                    agregar un recordatorio de tareas que le presente su terapeuta e incluso un lugar donde pueda
                    registrar sus recetas médicas.
                    Todo de manera 100% gratuita y confidencial.
                </p>
            </div>
        </div>
        <!-- Sobre nosotros -->

        <div id="donacion" class="shadow">
            <h2>¿Te gusta nuestro proyecto y deseas aportar?</h2>
            <p>
                Nuestro proyecto está pensado para ser un espacio completamente seguro y gratuito para sus usuarios.
                Por lo tanto, no comercializamos con los datos, ni con la información entregada por sus usuarios. Este
                se mantiene por medio de publicidades que se muestran en ciertas partes del sitio web. Mas, si deseas
                apoyar nuestro proyecto,
                tenemos habilitado un patreon para recibir donaciones, las cuales se usarán para continuar pagando el
                dominio e implementar mejoras en el mismo
            </p>


            <a href="">patreon</a>
        </div>

    </body>

    </html>