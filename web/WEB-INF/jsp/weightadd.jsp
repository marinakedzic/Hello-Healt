<%-- 
    Document   : weightadd
    Created on : Feb 6, 2019, 12:51:16 AM
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
        <h1 id="h1i">Add Weight</h1>
        <div id="divap">
       <form action= "weightnewadd" method="post">
           <input class="inputm" type="id" name="id" value="${cid}" />
            <input class="inputl" type="weight" name="weight" />
            <input class="inputl" type="submit" value="Add">
        </form>
        </div>
            <div>
        <form action= "weightnewgraph" method="post">
            <input class="inputm" type="text" name="id" value="${cid}">
            <input class="inputmv"type="submit" value="Graph">
        </form>
        <form action= "othersites" method="post">
            <input class="inputmv" type="submit" value="Sites">
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
