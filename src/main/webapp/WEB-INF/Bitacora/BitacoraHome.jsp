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
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Titulo</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${bitacoras}" var="bitacora">
                <tr>
                    <td><c:out value="${bitacora.dateTime}"/></td>
                    <td><c:out value="${bitacora.title}"/></td>
                    <td>button</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>