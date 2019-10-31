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
        <title>Home</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        
        <%
            List<Film> films = (List<Film>)request.getAttribute("filmlist");
        %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container">
            <div class="row"></div>
            <div class="row" style="margin-top: 30px">
                <p style="padding-left: 15px; margin-bottom: 0"><a href="#">2019 Movies</a></p>
                <div class="col"  ></div>

                <div class="card-deck col-auto mb-4" >

                <%for (Film film : films) {%>
                    <div class="card des" style="width:40rem">
                        <a href="Film?id=<%=film.getFilmId()%>"><img class="card-img-top" src="<%=film.getImagePath()%>" alt="joker" style="cursor: pointer"></img></a>
                        <span style="display: none; position: absolute;background: rgba(0, 0, 0, .7);color: #fff;"><%=film.getDescription()%></span>
                        <div class="card-body">
                            <h5 class="card-title"><%=film.getTitle()%></h5>
                            <p class="card-text">Release: <%=film.getReleaseYear()%></p>
                        </div>
                    </div>
                <%}%>
                </div>
                <div class="col"></div>
            </div>
        </div>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery/jquery.js"></script>
        <script>
            $('.des').on({
                mouseenter: function (){
                    $(this).find('span').fadeIn(100);
                },
                mouseleave: function (){
                    $(this).find('span').fadeOut(100);
                }
            })
        </script>
    </body>
</html>
