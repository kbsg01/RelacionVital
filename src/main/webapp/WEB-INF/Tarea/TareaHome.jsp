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
    <title>Tareas</title>
</head>
<body>
    <div>
        <table>
            <thead>
                <tr>
                    <th></th>
                    <th>Terminar el:</th>
                    <th>Descripción</th>
                    <th>Fecha de creación</th>
                    <th>Eliminar</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:foreach items="tareas" var="tarea">
                    <tr>
                        <td>
                            <form action="" method="post"></form>
                        </td>
                        <td></td>
                        <td><c:out value="${tarea.deadline}"/></td>
                        <td><c:out value="${tarea.task}"/></td>
                        <td><c:out value="${tarea.createdAt}"/></td>
                        <td><a href="">X</a></td>
                        <td><a href="">Editar</a></td>
                    </tr>
                </c:foreach>
            </tbody>
        </table>
    </div>
    <div>
        <table>
            <thead>
                <tr>
                    <th>Terminar el:</th>
                    <th>Descripción</th>
                    <th>Fecha de creación</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <c:foreach items="completeT" var="tareac">
                    <tr>
                        <td>
                            <form action="/tareas/${tareac.id}/complete" method="post"></form>
                        </td>
                        <td><c:out value="${tareac.deadline}"/></td>
                        <td><c:out value="${tareac.task}"/></td>
                        <td><c:out value="${tareac.createdAt}"/></td>
                        <td><a href="/tareas/${tareac.id}/delete">X</a></td>
                    </tr>
                </c:foreach>
            </tbody>
        </table>
    </div>
    <div>
        <form:form action="" method="post">

        </form:form>
    </div>
</body>
</html>