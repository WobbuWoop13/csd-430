<%-- 
    Kyle Marlia-Conner
    7/12/2025
    Module 9
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.cs430.MovieBean" %>

<jsp:useBean id="movie" class="com.cs430.MovieBean" scope="request" />

<!DOCTYPE html>

<html>

<head>

    <title>Select a Movie to Update</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>

<body>

<h2>Add, Edit, or Delete Movies</h2>
<p style="text-align:center;">To update or delete a movie record, select it by title below and choose an action.</p>

<form method="get">
    <label for="movieId">Select Movie:</label>
    <select name="movieId" id="movieId" required>
    
        <%
            List<MovieBean> movies = MovieBean.getAllMovies();
            if (movies.isEmpty()) {
                out.println("<option disabled>No movies available</option>");
            } else {
                for (MovieBean m : movies) {
        %>
        
            <option value="<%= m.getMovie_id() %>">
                <%= m.getTitle() %> (<%= m.getRelease_year() %>)
            </option>
        <%
                }
            }
        %>
        
    </select>

    <br><br>

    <input 
      type="button" 
      value="Add Movie" 
      onclick="window.location.href='addMovie.jsp'" 
    />

    <input 
      type="submit" 
      value="Edit Movie" 
      formaction="movieUpdateForm.jsp" 
    />

    <input 
      type="submit" 
      value="Delete Movie" 
      formaction="deleteMovie.jsp" 
      onclick="return confirm('Are you sure you want to delete this movie?');" 
    />

    <input 
      type="button" 
      value="View All Movies" 
      onclick="window.location.href='displayMovies.jsp'" 
    />
    
</form>

<p style="text-align:center;"><a href="index.jsp">Back to Home</a></p>

</body>
</html>
