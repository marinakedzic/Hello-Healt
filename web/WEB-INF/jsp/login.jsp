<%-- 
    Document   : login
    Created on : Feb 5, 2019, 11:46:12 PM
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/css/mainCSS.css"/>" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=EB+Garamond" rel="stylesheet">
        <title>Login Page</title>
    </head>
    <body>
        <h1 id="h1i">Welcome</h1><br/>
        <span>${hello}</span>
        <form action= "loginback" method="post">
            <div class="divi">
            Email<input class="inputl" type="text" name="email" />
            Password<input class="inputl" type="password" name="password" />
            </div>
            <div class="divi">
            <input class="inputs" type="submit" value="Login">
            </div>
        </form>
    </body>
</html>