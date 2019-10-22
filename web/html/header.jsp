<%-- 
    Document   : header
    Created on : Oct 16, 2019, 10:54:43 PM
    Author     : dangb
--%>

<%@page import="entity.Film"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        
        <%
            List<Film> films = (List<Film>)request.getAttribute("filmlist");
        %>
    </head>
    <body>
        <%for (Film f : films) {%>
            <div class="card" style="width:18rem">
                <img class="card-img-top" src="<%=f.getImagePath()%>" alt="joker"></img>
                <div class="card-body">
                    <h5 class="card-title"><%=f.getTitle()%></h5>
                    <p class="card-text">description</p>
                    <p class="card-text">Release: <%=f.getReleaseYear()%></p>
                </div>
            </div>
            
        <%}%>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
    </body>
</html>
