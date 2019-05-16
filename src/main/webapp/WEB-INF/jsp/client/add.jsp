<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Dodaj Klienta</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
    <title><s:message code="profilEdit.pageName"/></title>

</head>
<body>
<%@include file="/WEB-INF/incl/menu.app" %>
<h1>Dodaj Klienta</h1>


<%--<form:form method="post"--%>
           <%--modelAttribute="client">--%>

    <%--<table>--%>
    <%--<tr>--%>
    <%--Imie: <form:input path="firstName" />--%>
    <%--<td><form:errors path="firstName"--%>
                 <%--cssClass="error"/><br>--%>
    <%--</tr>--%>
    <%--Nazwisko: <form:input path="lastName" />--%>
    <%--<form:errors path="lastName"--%>
                 <%--cssClass="error"/>--%>

    <%--</table>--%>

    <%--<input type="submit" value="Save">--%>
<form:form method="post"
           modelAttribute="client">

    <table class="myTable"  border="0" cellpadding="10px" cellspacing="5px" >
        <tr>
            <td>Podaj imie</td>
            <td><form:input name="name" path="firstName"  /> </td>
            <td> <form:errors id="name" path="firstName"
                             cssClass="error"/> </td>
        </tr>
        <tr>
            <td>Podaj Nazwisko</td>
            <td><form:input path="lastName" /> </td>
            <form:errors path="lastName"
                             cssClass="error"/>
        </tr>
    </table>

    <input type="submit" value="Save">
</form:form>
<a href="http://localhost:8080/"><p>Strona główna</p></a><br>


</body>
</html>