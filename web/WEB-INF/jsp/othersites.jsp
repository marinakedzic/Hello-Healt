<%-- 
    Document   : othersites
    Created on : Feb 5, 2019, 11:47:50 PM
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
