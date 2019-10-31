<%-- 
    Document   : film
    Created on : Oct 28, 2019, 10:06:08 AM
    Author     : dangb
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Review"%>
<%@page import="entity.Actor"%>
<%@page import="java.util.List"%>
<%@page import="entity.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            Film f = (Film)request.getAttribute("film");
            List<Actor> actors = (List<Actor>)request.getAttribute("actors");
            List<String> directors = (List<String>)request.getAttribute("directors");
            List<Review> reviews = (List<Review>) request.getAttribute("reviews");
        %>
        <title><%=f.getTitle()%></title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <style>
            p{
                margin: 0;
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container">
            
            <div class="row" style="margin-top: 20px">
                <div class="col-3" style="border-right: 1px solid black">
                    <img class="card-img-top" src="<%=f.getImagePath()%>" alt="joker" style="cursor: pointer; height: 300px; width: 200px"></img><br>
                    <a href="#">Add to my list</a><br>
                    <a href="#">Add to my favorite</a><br>
                    <strong style="border-bottom: 1px solid black; width: 80px">Information</strong><br>
                    <p>Release: <%=f.getReleaseYear()%></p>
                    <p>Duration: <%=f.getDuration()%> mins</p>
                    <p>
                        Director: 
                        <c:forEach var="d" items="${requestScope.directors}">
                            ${d},
                        </c:forEach>
                    </p>
                    <p>
                        Stars: 
                        <c:forEach var="a" items="${requestScope.actors}">
                            ${a.name},
                        </c:forEach>
                    </p>
                    <p>Budget: $<%=f.getBudget()%>,000,000</p>
                    <p>Gross: $<%=f.getGross()%>,000,000</p>
                </div>
                <div class="col-9" style="border-right: 1px solid black">
                    <h2>Synopsis</h2>
                    <span><%=f.getDescription()%></span><br><br>
                    <h2>Reviews:</h2>
                    <c:forEach var="i" items="${requestScope.reviews}">
                        <h3>${i.username}</h3>
                        <strong>${i.upvote} users found this review helpful</strong><br>
                        <span>${i.content}</span><br><br>
                    </c:forEach>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery/jquery.js"></script>
    </body>
</html>
