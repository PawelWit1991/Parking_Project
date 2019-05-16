<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Edytuj Samochod</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
    <title><s:message code="profilEdit.pageName"/></title>

</head>
<body>
<%@include file="/WEB-INF/incl/menu.app" %>

<%--<form method="post">--%>
<%--Marka: <input type="text" name="brand"><br>--%>
<%--Model: <input type="text" name="modelCar"><br>--%>
<%--<input type="submit" value="Submit">--%>
<%--</form>--%>

<form:form method="post"
           modelAttribute="car">
    Marka: <form:input path="brand" />
    Model: <form:input path="modelCar" />
    Rejestracja: <form:input path="registrationNumber" />
    Klient <form:select path="client">
    <form:options items="${clients}" itemLabel="lastName" itemValue="id"/>
</form:select></td>
    <input type="submit" value="Save">
</form:form>
</body>
</html>