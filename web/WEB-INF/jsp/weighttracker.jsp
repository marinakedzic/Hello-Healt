<%-- 
    Document   : weighttracker
    Created on : Feb 5, 2019, 11:46:45 PM
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/css/mainCSS.css"/>" rel="stylesheet">
        <title>Weight Tracker</title>
    </head>
    <body>
        <h1 id="h1i">Hello Health</h1>
        <div class="divm">
        <form action= "weightadd" method="post">
            <input class="inputm" type="text" name="id" value="${cid}">
            <input class="inputmv"type="submit" value="Add weight">
        </form>
        <form action= "weightnewgraph" method="post">
            <input class="inputm" type="text" name="id" value="${cid}">
            <input class="inputmv" type="submit" value="Graph">
        </form>
        <form action= "bmi" method="post">
            <input class="inputmv" type="submit" value="BMI">
        </form>
        <form action= "othersites" method="post">
            <input class="inputmv" type="submit" value="Sites">
        </form>
        <form action= "logout" method="post">
            <!--<input type="text" name="id" value="${cid}">-->
            <input class="inputmv" type="submit" value="Logout">
        </form>
        </div>
    </body>
</html>
