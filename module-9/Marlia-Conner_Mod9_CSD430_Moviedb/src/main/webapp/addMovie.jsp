<%-- 
    Kyle Marlia-Conner
    7/12/2025
    Module 9
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cs430.MovieBean" %>

<jsp:useBean id="movie" class="com.cs430.MovieBean" scope="request" />

<!DOCTYPE html>

<html>

<head>
    <title>Add New Movie</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<h2>Add a New Movie to the Database</h2>

<form method="post" action="addMovie.jsp">
    Title: <input type="text" name="title" required><br><br>
    Director: <input type="text" name="director" required><br><br>
    Genre: <input type="text" name="genre" required><br><br>
    Year Released: <input type="number" name="yearReleased" required><br><br>
    Rating: <input type="text" name="rating" required><br><br>
    <input type="submit" value="Add Movie">
</form>

<%
    // If form is submitted, populate the bean and call addMovie()
    if (request.getParameter("title") != null) {
        movie.setTitle(request.getParameter("title"));
        movie.setDirector(request.getParameter("director"));
        movie.setGenre(request.getParameter("genre"));
        movie.setRelease_year(Integer.parseInt(request.getParameter("yearReleased")));
        movie.setRating(Double.parseDouble(request.getParameter("rating")));

        if (movie.addMovie()) {
%>

            <p><strong>Movie successfully added!</strong></p>
            
<%
        } else {
%>

            <p style="color:red;">Error: Movie could not be added.</p>
            
<%
        }
    }
%>

<p><a href="index.jsp">Return to Home</a> | <a href="displayMovies.jsp">View All Movies</a> | <a href="movieSelect.jsp">Go Back</a></p>

</body>
</html>

