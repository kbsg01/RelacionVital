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
    <title>Document</title>
</head>
<body>
    <a href="/bitacora">Atras</a>

    <div>
        <p><fmt:formatDate pattern = "dd-MMMM-yyyy" value = "${bitacora.createdAt}" /></p>
        <p><c:out value="${bitacora.entrada}"/></p>
        <h1><c:out value="${bitacora.title}"/>></h1>
    </div>

    <a href="/bitacora/${bitacora.id}/edit">Editar</a>
    <a href="/bitacora/${bitacora.id}/delete">Eliminar</a>
    
</body>
</html>