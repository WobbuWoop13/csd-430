<%-- 
    Kyle Marlia-Conner
    6/29/2025
    Module 7
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>

<head>
    <title>Add New Movie</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
</head>

<body>

<h2>Add a New Movie to the Databse</h2>

<%-- Form to add new movie to the database --%>
<form method="post" action="addMovie.jsp">
    Title: <input type="text" name="title" required><br><br>
    Director: <input type="text" name="director" required><br><br>
    Genre: <input type="text" name="genre" required><br><br>
    Year Released: <input type="number" name="yearReleased" required><br><br>
    Rating: <input type="text" name="rating" required><br><br>
    <input type="submit" value="Add Movie">
</form>

<%
    // Process the form if submitted
    String title = request.getParameter("title");

	//If form has been submitted, insert new entry into database
    if (title != null) {
        String director = request.getParameter("director");
        String genre = request.getParameter("genre");
        String yearReleased = request.getParameter("yearReleased");
        String rating = request.getParameter("rating");

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

         // Prepare SQL INSERT statement (movie_id is auto-generated and the primary key)
            String sql = "INSERT INTO kyle_movies_data (title, director, genre, release_year, rating) VALUES (?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, director);
            ps.setString(3, genre);
            ps.setInt(4, Integer.parseInt(yearReleased));
            ps.setString(5, rating);

            // Execute
            ps.executeUpdate();
%>

            <p><strong>Movie successfully added!</strong></p>
            
<%
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        } finally {
            try { if (ps != null) ps.close(); } catch (Exception ignored) {}
            try { if (conn != null) conn.close(); } catch (Exception ignored) {}
        }
    }
%>

<p><a href="index.jsp">Return to Home</a> | <a href="displayMovies.jsp">View All Movies</a></p>

</body>
</html>
