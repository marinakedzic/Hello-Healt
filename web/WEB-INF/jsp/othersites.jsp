<%-- 
    Document   : othersites
    Created on : Feb 5, 2019, 11:47:50 PM
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
        <title>Sites</title>
    </head>
    <body>
        <h1 id="h1i">Sites</h1>
        <div class="divr">
            <a href="https://www.health.com/" target="_blank"><img src='<c:url value="/images/image1.PNG"></c:url>' /></a>
            <a href="https://www.webmd.com/" target="_blank"><img src='<c:url value="/images/image2.PNG"></c:url>' /></a>
            <a href="https://www.healthline.com/" target="_blank"><img src='<c:url value="/images/image3.PNG"></c:url>' /></a>
        </div>
        <div class="divr">
        <form action= "weightadd" method="post">
            <input class="inputa" type="submit" value="Add weight">
        </form>
        <form action= "weightnewgraph" method="post">
            <input class="inputmv" type="submit" value="Graph">
        </form>
        <form action= "bmi" method="post">
            <input class="inputmv" type="submit" value="BMI">
        </form>
        <form action= "logout" method="post">
            <input class="inputmv" type="submit" value="Logout">
        </form>
        </div>
    </body>
</html>
