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
    <title>Proyecto Salud Mental Index</title>
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
    
    <div id="topNav">
        <p class="alinear">botón de 3 lineas</p>
        <div id="logo" class="alinear">
            <a href="">
                <img src="/img/logo.png" alt="Dibujo del logo del proyecto, contiene un zorrito">
            </a>
        </div>
    </div>
    <div id="aboutUs" class="alinear">
        <h2>carrusel</h2>
        <p>
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vero quaerat quo, veritatis ea numquam provident nisi molestiae earum, architecto, commodi magnam. Fugit molestias recusandae soluta. Sunt minima consequatur dolor magni.
            Nulla autem ipsum temporibus! Perspiciatis aut sapiente sed exercitationem soluta id ipsam! Cupiditate laboriosam voluptatibus blanditiis doloremque necessitatibus dolore nulla quod natus cum omnis, quidem alias officia eaque aspernatur similique!
        </p>
            
        <h2>mision</h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sed debitis esse quaerat explicabo molestias veritatis. Doloremque aliquid provident reprehenderit ut debitis illum, repudiandae voluptas enim. Magni mollitia alias aspernatur quibusdam!
        Rem, nam ad vel tempora laborum enim alias! In vel dolores ratione voluptatum asperiores corporis quae ad quas corrupti harum enim ex labore tempore inventore, fugit ducimus doloribus minus? Magnam.
        Aliquid hic dolor quae suscipit. Nemo deleniti, est, dolorum ut voluptatum nisi eligendi neque eos quibusdam deserunt quis! Magni quidem, aspernatur ullam iusto alias nisi tempora amet necessitatibus omnis odit.
        </p>
        <h2>vision</h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sed debitis esse quaerat explicabo molestias veritatis. Doloremque aliquid provident reprehenderit ut debitis illum, repudiandae voluptas enim. Magni mollitia alias aspernatur quibusdam!
        Rem, nam ad vel tempora laborum enim alias! In vel dolores ratione voluptatum asperiores corporis quae ad quas corrupti harum enim ex labore tempore inventore, fugit ducimus doloribus minus? Magnam.
        Aliquid hic dolor quae suscipit. Nemo deleniti, est, dolorum ut voluptatum nisi eligendi neque eos quibusdam deserunt quis! Magni quidem, aspernatur ullam iusto alias nisi tempora amet necessitatibus omnis odit.</p>
    </div>
    <div id="user" class="alinear">
        <div id="userRegister">
            <h1>Register!</h1>
            <form:form method="post" action="/register" modelAttribute="user">
                <p>
                    <form:label path="name">Name:</form:label>
                    <form:errors path="name"/>
                    <form:input class="form-control" path="name"/>
                </p>
                <p>
                    <form:label path="email">Email:</form:label>
                    <form:errors path="email"/>
                    <form:input class="form-control" type="email" path="email"/>
                </p>
                <p>
                    <form:label path="password">Password:</form:label>
                    <form:errors path="password"/>
                    <form:password class="form-control" path="password"/>
                </p>
                <p>
                    <form:label path="passwordConfirmation">Password Confirmation:</form:label>
                    <form:errors path="passwordConfirmation"/>
                    <form:password class="form-control" path="passwordConfirmation"/>
                </p>
                <input type="submit" value="Register!"/>
            </form:form>
        </div>
        <div id="userLogin">
            <h1>Login</h1>
            <p><c:out value="${error}"/></p>
            <form method="post" action="/login" >
                <p>
                    <label for="email">Email</label>
                    <input class="form-control" type="text" id="email" name="email"/>
                </p>
                <p>
                    <label for="password">Password</label>
                    <input class="form-control"type="password" id="password" name="password"/>
                </p>
                <input type="submit" value="Login!"/>
            </form>
        </div>
    </div>
</body>
</html>