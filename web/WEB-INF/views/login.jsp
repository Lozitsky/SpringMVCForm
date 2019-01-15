<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Надія
  Date: 15.01.2019
  Time: 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/reset.css"/>" rel="stylesheet">
    <title>Login Page</title>
</head>
<body>

<%--https://stackoverflow.com/questions/46989072/org-apache-jasper-jasperexception-web-inf-views-home-jsp-line-25-column/48364974--%>
<form:form method="post" modelAttribute="user" action="check-user" class="box login">
    <fieldset class="boxBody">
        <form:label path="name">Username:</form:label>
        <form:input path="name" placeholder="your name"/>

        <form:label path="password">Password:</form:label>
        <form:password path="password" placeholder="your password"/>
    </fieldset>
    <footer>
        <label><input type="checkbox" tabindex="3">Keep me logged in</label>
        <input type="submit" class="btnLogin" value="Login" tabindex="4">
    </footer>
</form:form>

<%--<form class="box login">
    <fieldset class="boxBody">
        <label>Username</label>
        <input type="text" tabindex="1" placeholder="username" required="">
        <label><a href="#" class="rLink" tabindex="5">Forget your password?</a>Password</label>
        <input type="password" tabindex="2" placeholder="password" required="">
    </fieldset>
    <footer>
        <label><input type="checkbox" tabindex="3">Keep me logged in</label>
        <input type="submit" class="btnLogin" value="Login" tabindex="4">
    </footer>
</form>--%>

</body>
</html>
