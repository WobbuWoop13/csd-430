<%-- 
    Kyle Marlia-Conner
    7/12/2025
    Module 9
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.cs430.MovieBean" %>

<jsp:useBean id="movie" class="com.cs430.MovieBean" scope="request" />


<%
    String idParam = request.getParameter("movieId");
    if (idParam != null) {
        int id = Integer.parseInt(idParam);
        movie.deleteMovieById(id);
    }

    response.sendRedirect("movieSelect.jsp");
%>
