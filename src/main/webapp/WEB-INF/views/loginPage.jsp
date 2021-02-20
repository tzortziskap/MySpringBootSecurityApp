<%-- 
    Document   : home
    Created on : 18 Φεβ 2021, 8:49:45 μμ
    Author     : tzortziskapellas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet">
        <title>Login Page</title>
    </head>
    <body>
        <c:if test="${param.logout !=null}">
            <div class="logout">
                You successfully logout
            </div>
        </c:if>
        <c:if test="${param.error !=null}">
            <div class="error">
                Invalid Credentials
            </div>
        </c:if>
        <form:form action="/authenticate" method="POST">
            <p>
                Username: <input type="text" name="username" />
            </p>
            <p>
                Password: <input type="password" name="password"/>
            </p>
            <input type="submit" value="Login"/>
        </form:form>
    </body>
</html>
