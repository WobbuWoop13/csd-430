<%-- 
    Kyle Marlia-Conner
    7/06/2025
    Module 8
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cs430.MovieBean" %>

<jsp:useBean id="movie" class="com.cs430.MovieBean" scope="request" />

<%
    int id = Integer.parseInt(request.getParameter("movieId"));
    movie.loadMovieById(id);
%>

<!DOCTYPE html>

<html>

<head>

    <title>Edit Movie</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>

<body>

<h2>Edit Movie Record</h2>

<form action="movieDisplay.jsp" method="post">

    <!-- Movie ID is shown but not editable -->
    <p>Movie ID: <strong><%= movie.getMovie_id() %></strong></p>
    <input type="hidden" name="movieId" value="<%= movie.getMovie_id() %>">

    Title: <input type="text" name="title" value="<%= movie.getTitle() %>" required><br><br>
    Director: <input type="text" name="director" value="<%= movie.getDirector() %>" required><br><br>
    Genre: <input type="text" name="genre" value="<%= movie.getGenre() %>" required><br><br>
    Year Released: <input type="number" name="yearReleased" value="<%= movie.getRelease_year() %>" required><br><br>
    Rating: <input type="text" name="rating" value="<%= movie.getRating() %>" required><br><br>

    <input type="submit" value="Update Movie">
    
</form>

<p><a href="index.jsp">Return to Home</a> | <a href="displayMovies.jsp">View All Movies</a> | <a href="movieSelect.jsp">Go Back</a></p>

</body>
</html>
