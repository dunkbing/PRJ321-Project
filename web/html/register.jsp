<%-- 
    Document   : register
    Created on : Nov 1, 2019, 12:18:04 AM
    Author     : dangb
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dang ky</title>
        <link rel="stylesheet" href="common/style.css">
    </head>
    <body>
        <div class="login-panel">
            <c:choose>
                <c:when test="${message!=null}">
                    <h1>${message}</h1>
                    <a href="Login">Dang nhap</a><br>
                </c:when>
                <c:otherwise>
                    <h1 class="logo">Register here</h1>
                    <form action="Register" method="post">
                        <p>username</p>
                        <input type="text" placeholder="Ten dang nhap" name="username"/><br>
                        <p>password</p>
                        <input type="password" placeholder="mat khau" name="password"/><br>
                        <p>email</p>
                        <input type="text" placeholder="email address" name="email"/><br>
                        <input type="submit" value="dang ki" />
                        <a href="Login">Dang nhap</a><br>
                    </form>
                </c:otherwise>
            </c:choose>
            
        </div>
    </body>
</html>
