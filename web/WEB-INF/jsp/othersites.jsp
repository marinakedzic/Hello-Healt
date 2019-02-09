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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>U pripremi</h1>
        <form action= "weightadd" method="post">
            <input type="submit" value="Add weight">
        </form>
        <form action= "weightnewgraph" method="post">
            <input type="submit" value="Graph">
        </form>
        <form action= "bmi" method="post">
            <input type="submit" value="BMI">
        </form>
        <form action= "logout" method="post">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
