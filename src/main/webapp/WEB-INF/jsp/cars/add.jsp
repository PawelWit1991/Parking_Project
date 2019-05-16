<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Dodaj Samochod</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
    <title><s:message code="profilEdit.pageName"/></title>

</head>
<body>
<%@include file="/WEB-INF/incl/menu.app" %>
<h1>Dodaj Samochod</h1>


<form:form method="post"
           modelAttribute="car">

    <table class="myTable"  border="0" cellpadding="10px" cellspacing="5px" >
        <tr>
            <td>Podaj Marke</td>
            <td><form:input name="name" path="brand"  /> </td>
           <td> <form:errors   path="brand" cssClass="error" element="div" /></td>
        </tr>
        <tr>
            <td>Podaj Model</td>
            <td><form:input path="modelCar" /> </td>
           <td> <form:errors path="modelCar"
                         cssClass="error"/> </td>
        </tr>
        <tr>
            <td>Podaj Rejestracje</td>
            <td><form:input path="registrationNumber" /> </td>
           <td> <form:errors path="registrationNumber"
                         cssClass="error"/> </td>git
        </tr>
        <tr>
            <td>Przypisz Klienta</td>
            <td><form:select path="client">
                <form:options items="${clients}" itemLabel="lastName" itemValue="id"/>
            </form:select></td>

        </tr>
    </table>

    <input type="submit" value="Save">
</form:form>

<a href="http://localhost:8080/"><p>Strona główna</p></a><br>

</body>
</html>