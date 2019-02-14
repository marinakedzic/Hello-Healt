<%-- 
    Document   : tableweight
    Created on : Feb 9, 2019, 2:13:43 PM
    Author     : Marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/css/mainCSS.css"/>" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=EB+Garamond" rel="stylesheet">
        <title>Table weight</title>
    </head>
    <body>
                  <h1 id="h1i">History of weights</h1>
                  <table>
                     <tr>
                        <th>Weight</th>
                        <th>Date</th>
                     </tr>
                    <c:forEach items="${weight}" var="weight">
                        <tr>
                            <td>
                            <c:out value="${String.valueOf(weight.weight)}" />
                            </td>
                            <td>
                            <c:out value="${weight.date}" />
                            </td>
                        </tr>
                    </c:forEach>
                  </table>
                  <div class="divr">
            <form action= "weightadd" method="post">
                <input class="inputm" type="text" name="id" value="${cid}">
                <input class="inputa" type="submit" value="Add weight">
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
