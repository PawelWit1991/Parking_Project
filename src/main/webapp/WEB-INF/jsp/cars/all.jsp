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

<h1>Lista Samochodów</h1>
<table class="myTable"  border="1">
<c:forEach items="${cars}" var="car">

    <tr>

        <td>${car.id}</td>
        <td>${car.brand}</td>
        <td>${car.modelCar}</td>
        <td>${car.registrationNumber}</td>
        <td>${car.client}</td>

    </tr>


</c:forEach>
</table>
<a href="http://localhost:8080/cars/add"><p>Dodaj samochod</p></a><br>
<a href="http://localhost:8080/"><p>Strona glówna</p></a><br>
</body>
</html>
