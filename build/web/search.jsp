<%-- 
    Document   : search
    Created on : Oct 22, 2019, 8:14:01 AM
    Author     : dangb
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entity.Type"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            ArrayList<Type> types = (ArrayList<Type>)request.getAttribute("types");
        %>
    </head>
    <body>
        <h1><%=types.size()%></h1>
    </body>
</html>
