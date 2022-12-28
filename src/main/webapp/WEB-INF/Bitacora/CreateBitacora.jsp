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
    <title>Document</title>
</head>
<body>
    <h1>Bitacora</h1>
    <form:form method="post" action="" modelAttribute="bitacora">
        <p>
            <form:label path="title">Titulo:</form:label>
            <form:errors path="title"/>
            <form:input path="title"/>
        </p>
        <p>
            <form:label path="entrada">Entrada:</form:label>
            <form:errors path="entrada"/>
            <form:textarea path="entrada"/>
        </p>
        <p>
            <form:label path="dateTime">Fecha:</form:label>
            <form:errors path="dateTime"/>
            <form:input type="date" path="dateTime"/>
        </p>
        <input type="submit" value="Submit!"/>
        <a href="/bitacora">Cancel</a>
    </form:form>
</body>
</html>