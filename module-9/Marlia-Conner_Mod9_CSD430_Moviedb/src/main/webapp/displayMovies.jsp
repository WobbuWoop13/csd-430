<%-- 
    Kyle Marlia-Conner
    7/12/2025
    Module 9
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cs430.MovieBean" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>

<html>

<head>

    <title>All Movie Records</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>

<body>

<h2>Movies in the Database</h2>
<p style="text-align:center;">This table shows all movies currently stored. Each containing the following: ID, Title, Director, Genre, Year Released, and Rating.</p>

<table>

    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Director</th>
        <th>Genre</th>
        <th>Year Released</th>
        <th>Rating</th>
    </tr>
    </thead>
    
    <tbody>
    
<%
    List<MovieBean> movies = MovieBean.getAllMovies();
    for (MovieBean m : movies) {
%>

        <tr>
            <td><%= m.getMovie_id() %></td>
            <td><%= m.getTitle() %></td>
            <td><%= m.getDirector() %></td>
            <td><%= m.getGenre() %></td>
            <td><%= m.getRelease_year() %></td>
            <td><%= m.getRating() %></td>
        </tr>
        
<%
    }
    if (movies.isEmpty()) {
%>

        <tr><td colspan="6">No movie records found.</td></tr>
        
<%
    }
%>

    </tbody>
</table>

<p><a href="index.jsp">Return to Home</a> | <a href="movieSelect.jsp">Return to Add/Delete/Edit</a></p>

</body>
</html>

