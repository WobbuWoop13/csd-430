<%-- 
    Kyle Marlia-Conner
    6/21/2025
    Module 5/6
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<html>

<head>

<title>Movie Details</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>

<%
    String selected = request.getParameter("movie_id");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

    PreparedStatement ps;
    if ("all".equals(selected)) {
        ps = con.prepareStatement("SELECT * FROM kyle_movies_data");
    } else {
        ps = con.prepareStatement("SELECT * FROM kyle_movies_data WHERE movie_id = ?");
        ps.setInt(1, Integer.parseInt(selected));
    }

    ResultSet rs = ps.executeQuery();
%>

<h2>Movie Details<%= "all".equals(selected) ? "s" : "" %></h2>

<table border="1">

    <thead>
    <tr><th>ID</th><th>Title</th><th>Director</th><th>Genre</th><th>Year</th><th>Rating</th></tr>
    </thead>
    
    <tbody>
    
<%
    boolean hasRows = false;
    while (rs.next()) {
        hasRows = true;
%>

    <tr>
        <td><%= rs.getInt("movie_id") %></td>
        <td><%= rs.getString("title") %></td>
        <td><%= rs.getString("director") %></td>
        <td><%= rs.getString("genre") %></td>
        <td><%= rs.getInt("release_year") %></td>
        <td><%= rs.getDouble("rating") %></td>
    </tr>
    
<%
    }
    if (!hasRows) {
%>

    <tr><td colspan="6">No data found.</td></tr>
    
<%
    }
    con.close();
%>

    </tbody>
</table>

<br><br>

<form action="movieSelect.jsp" method="get">
    <input type="submit" value="Back to Movie Selection">
</form>

</body>
</html>
