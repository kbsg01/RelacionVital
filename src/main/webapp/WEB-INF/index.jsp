<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>
    </head>
    <body>
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
        
        <h1>Login</h1>
        <p><c:out value="${error}" /></p>
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
    </body>
</html>