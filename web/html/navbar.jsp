<%-- 
    Document   : navbar
    Created on : Oct 26, 2019, 12:55:00 PM
    Author     : dangb
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Film f2 = new Film();
    try {
        f2 = (Film)request.getAttribute("film");
    } catch (NullPointerException e) {
        f2 = null;
    }
    
%>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="images/logo.png" style="height:95px !important;"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="FilmList">Trang chu <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Film">Movies</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Community</a>
                </li>
                <!--<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>-->
            </ul>
            <div class="ml-auto">
                <ul class="navbar-nav">
                <c:choose>
                    <c:when test="${currentAccount != null}">
                        <li class="nav-item">
                            <a class="nav-link" href="#">${currentAccount.username}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Logout">Dang xuat</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="Register"><i class="fas fa-edit mr-1"></i>Dang ky</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Login"><i class="fas fa-user-plus mr-1"></i>Dang nhap</a>
                        </li>
                    </c:otherwise>
                </c:choose>
                </ul>
            </div>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        
    </div>
        
</nav>
<div class="row">
    <div class="col-1"></div>
    <div class="col" style="margin-left: 60px; border-bottom: 1px solid black">${film!=null ? film.title:"welcome"}</div>
    <div class="col-1"></div>
</div>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="jquery/jquery.js"></script>