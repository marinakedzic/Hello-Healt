<%-- 
    Document   : registration
    Created on : Feb 5, 2019, 11:46:29 PM
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
        <title>Registration page</title>
    </head>
    <body>
        <h1 id="h1i">Let's meet</h1><br/>
        
        <form action= "addnewclient" method="post">
            <div class="divr">
            <span class="spanr">Ime: <input type="text" name="firstName" /></span>
            <span class="spanr">Prezime: <input type="text" name="lastName" /></span>
            <span class="spanr">Email: <input type="email" name="email" /></span>
            </div>
            <div class="divr">
            <span class="spanr">Height: <input type="text" name="height" /></span>
            <span class="spanr">Password: <input type="password" name="password" /></span>
            <input id="inputr" type="submit" value="Registration">
            </div>
        </form>
    </body>
</html>
