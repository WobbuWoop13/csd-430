<%-- 
    Kyle Marlia-Conner
    7/06/2025
    Module 8
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<jsp:useBean id="movie" class="com.cs430.MovieBean" scope="request" />


<!DOCTYPE html>

<html>

<head>

    <title>Select a Movie to Update</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>

<body>

<h2>Add, View, or Update Movies</h2>
<p style="text-align:center;">To edit a Movie Record, select the ID from the drop down then click edit!</p>

<form action="movieUpdateForm.jsp" method="get">
    <label for="movieId">Movie ID:</label>
    <select name="movieId" id="movieId" required>
    
        <%
            // Load all movie IDs using the JavaBean method
            List<Integer> ids = movie.getAllMovieIds();
        if (ids.isEmpty()) {
            out.println("<p style='color:red;'>DEBUG: No movie IDs found. Check database connection or table name.</p>");
        }

            for (int id : ids) {
        %>
        
            <option value="<%= id %>"><%= id %></option>
            
        <%
            }
        %>
        
    </select>
    
    <br><br>
    
    <input type="submit" value="Edit Movie">
    
    <input type="button" value="Add Movie" onclick="window.location.href='addMovie.jsp'" />
    
    <input type="button" value="View All Movies" onclick="window.location.href='displayMovies.jsp'" />

</form>

<p style="text-align:center;"><a href="index.jsp">Back to Home</a></p>

</body>
</html>
