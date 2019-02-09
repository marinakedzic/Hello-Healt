<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/css/mainCSS.css"/>" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=EB+Garamond" rel="stylesheet">
        <title>Welcome to Hello Health</title>
    </head>

    <body>
        <h1 id="h1i">Hello Health</h1>
        <div class="divi">
            <form action= "login" method="post">
                <input class="inputi" type="submit" value="Login">
                <!--<input type="text" value="${cid}">-->
            </form>
            <form action= "registration" method="post">
                <input class="inputi" type="submit" value="Registration">
            </form>
        </div>
    </body>
</html>
