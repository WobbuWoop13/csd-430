<%--Kyle Marlia-Conner
    Module 4
    06/15/2025 --%>

<%@ page import="beans.MovieBean" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>

<head>
    <title>Movie Information</title>
    <link rel="stylesheet" type="text/css" href="css/Style.css">
    
</head>

<body>

    <h1>Movie Information Display</h1>
    
    <p>This is the basic information of one of my favorite movies to revisit: LotR: The Fellowship of the Ring</p>

    <%
        MovieBean movie = new MovieBean();
        movie.setTitle("The Lord of the Rings");
        movie.setDirector("Peter Jackson");
        movie.setGenre("Fantasy");
        movie.setReleaseYear(2001);
        movie.setRating(9.0);
    %>

    <table>
    
        <tr><th>Field</th><th>Description</th></tr>
        
        <tr><td>Title</td><td><%= movie.getTitle() %></td></tr>
        
        <tr><td>Director</td><td><%= movie.getDirector() %></td></tr>
        
        <tr><td>Genre</td><td><%= movie.getGenre() %></td></tr>
        
        <tr><td>Release Year</td><td><%= movie.getReleaseYear() %></td></tr>
        
        <tr><td>Rating</td><td><%= movie.getRating() %></td></tr>
        
    </table>
    
</body>
</html>
