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
    <title>All Movie Records</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <style>
        table, th, td { border: 1px solid black; border-collapse: collapse; padding: 8px; }
    </style>
</head>

<body>
<h2>All Movies in the Database</h2>
<p>This table shows all movies currently stored in the system. Each containing the following: ID, Title, Director, Genre, Year Released, and Rating.</p>

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
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
        stmt = conn.createStatement();
        rs = stmt.executeQuery("SELECT * FROM kyle_movies_data");

        while (rs.next()) {
%>

            <tr>
            
                <td><%= rs.getInt("movie_id") %></td>
                <td><%= rs.getString("title") %></td>
                <td><%= rs.getString("director") %></td>
                <td><%= rs.getString("genre") %></td>
                <td><%= rs.getInt("release_year") %></td>
                <td><%= rs.getString("rating") %></td>
                
            </tr>
            
<%
        }
    } catch (Exception e) {
        out.println("<tr><td colspan='6'>Error: " + e.getMessage() + "</td></tr>");
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception ignored) {}
        try { if (stmt != null) stmt.close(); } catch (Exception ignored) {}
        try { if (conn != null) conn.close(); } catch (Exception ignored) {}
    }
%>

    </tbody>
    
</table>

<p><a href="index.jsp">Return to Home</a> | <a href="addMovie.jsp">Add New Movie</a></p>

</body>
</html>
