<%-- 
    Document   : admin-home
    Created on : 19 Φεβ 2021, 7:06:48 μμ
    Author     : tzortziskapellas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1>Welcome to Admistrator Home Page</h1>
        <p>You can do anything you want...</p>
        <form:form method = "POST" action = "/logout">
            <input type="submit" value="Logout">
        </form:form>
    </body>
</html>