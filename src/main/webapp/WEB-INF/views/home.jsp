<%-- 
    Document   : home
    Created on : 18 Φεβ 2021, 8:49:45 μμ
    Author     : tzortziskapellas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1>Welcome to Spring Security</h1>
        
        <p>
            User: <sec:authentication property="principal.username"/>
            </br>
            Role(s):<sec:authentication property="principal.authorities"/>
        </p>
        <sec:authorize access="hasRole('ADMIN')">
        <div>
            <a href="/admin">Administrator Home Page</a>
        </div>
        </sec:authorize>
        </br>
         <sec:authorize access="hasRole('TEACHER')">
         <div>
             <a href="/teacher">Teacher Home Page</a>
        </div>
         </sec:authorize>
        </br>
        <form:form method = "POST" action = "/logout">
            <input type="submit" value="Logout">
        </form:form>
    </body>
</html>
