<%-- 
    Kyle Marlia-Conner
    07/06/2025
    Module 8
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cs430.MovieBean" %>

<jsp:useBean id="movie" class="com.cs430.MovieBean" scope="request" />

<%
    // Get data from submission
    movie.setMovie_id(Integer.parseInt(request.getParameter("movieId")));
    movie.setTitle(request.getParameter("title"));
    movie.setDirector(request.getParameter("director"));
    movie.setGenre(request.getParameter("genre"));
    movie.setRelease_year(Integer.parseInt(request.getParameter("yearReleased")));
    movie.setRating(Double.parseDouble(request.getParameter("rating")));

    boolean updated = movie.updateMovie();
%>

<!DOCTYPE html>

<html>

<head>

    <title>Updated Movie Record</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>

<h2>Updated Movie Record</h2>

<%
    if (updated) {
%>
    <table>
    
        <thead>
        
        <tr>
            <th>Movie ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Genre</th>
            <th>Year Released</th>
            <th>Rating</th>
        </tr>
        
        </thead>
        
        <tbody>
        
        <tr>
            <td><%= movie.getMovie_id() %></td>
            <td><%= movie.getTitle() %></td>
            <td><%= movie.getDirector() %></td>
            <td><%= movie.getGenre() %></td>
            <td><%= movie.getRelease_year() %></td>
            <td><%= movie.getRating() %></td>
        </tr>
        
        </tbody>
        
    </table>
    
<%
    } else {
%>

    <p style="color:red; text-align:center;">Update failed. Please try again.</p>
    
<%
    }
%>

<p style="text-align:center;"><a href="index.jsp">Return to Home</a></p>

</body>
</html>
