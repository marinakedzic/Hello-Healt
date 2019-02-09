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
        <title>JSP Page</title>
    </head>
    <body>
          <form action= "bmitry" method="get">
            <input type="text" name="weight" />
            <input type="text" name="height" />
            <input type="submit" value="Mesure">
        </form>
        <input type="text" name="weight" value="${weight}" />
        <form action= "weightadd" method="post">
            <input type="submit" value="Add weight">
        </form>
        <form action= "weightnewgraph" method="post">
            <input type="submit" value="Graph">
        </form>
        <form action= "othersites" method="post">
            <input type="submit" value="Sites">
        </form>
        <form action= "logout" method="post">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
