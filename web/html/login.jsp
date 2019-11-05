<%-- 
    Document   : login
    Created on : Oct 31, 2019, 8:42:55 PM
    Author     : dangb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dang nhap</title>
        <link rel="stylesheet" type="text/css" href="common/style.css">
    </head>
    <body>
        <div class="login-panel">
            <h1 class="logo">Login here</h1>
            <p>${message}</p>
            <form action="Login" method="post">
                <p>username</p>
                <input type="text" placeholder="Ten dang nhap" name="username"/><br>
                <p>password</p>
                <input type="password" placeholder="mat khau" name="password"/><br>
                <input type="submit" value="dang nhap" />
                <a href="#">Quen mat khau</a><br>
                <a href="#">Dang ki</a>
            </form>
        </div>
    </body>
</html>
