<%-- 
    Document   : bmi
    Created on : Feb 5, 2019, 11:47:38 PM
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
        <title>BMI</title>
    </head>
    <body>
        <h1 id="h1i">BMI</h1>
        <div class="divr">
          <form action= "bmitry" method="get">
            <span class="spanb">Weight: <input class="inputl" type="text" name="weight" /></span>
            <span class="spanb">Height: <input  class="inputl" type="text" name="height" /></span>
            <input class="inputl" type="submit" value="Mesure">
          </form>
        </div>
            
        <div class="divr">
            <span class="spanb">Rezultat: <input class="inputl" type="text" name="weight" value="${weight}" disabled/></span>
            <form action="weightadd" method="post">
                <input class="inputa" type="submit" value="Add weight">
            </form>
            <form action="weightnewgraph" method="post">
                <input class="inputmv" type="submit" value="Graph">
            </form>
            <form action="othersites" method="post">
                <input class="inputmv" type="submit" value="Sites">
            </form>
            <form action="logout" method="post">
                <input class="inputmv" type="submit" value="Logout">
            </form>
        </div>
    </body>
</html>
