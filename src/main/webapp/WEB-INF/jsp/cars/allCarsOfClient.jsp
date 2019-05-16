<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
    <title><s:message code="profilEdit.pageName"/></title>

</head>
<body>
<%@include file="/WEB-INF/incl/menu.app" %>

<table border="10">
    <c:forEach items="${carsOfClient}" var="car">

        <tr>

            <td>${car.id}</td>
            <td>${car.brand}</td>
            <td>${car.modelCar}</td>
            <td>${car.registrationNumber}</td>
            <td><a href="http://localhost:8080/cars/delete/${car.id}"
                   onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
            <td><a href="http://localhost:8080/cars/edit/${car.id}"
                   onclick="return confirm('Are you sure you want to edit this item?');">Edit</a></td>


        </tr>


    </c:forEach>
</table>
<a href="http://localhost:8080/client/add"><p>Dodaj Klienta</p></a><br>
<a href="http://localhost:8080/"><p>Strona głowna</p></a><br>
</body>
</html>