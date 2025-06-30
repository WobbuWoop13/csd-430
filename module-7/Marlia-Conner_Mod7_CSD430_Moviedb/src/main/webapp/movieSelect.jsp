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

<title>Select a Movie</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body>

<h2>Select a Movie ID</h2>

<form method="post" action="movieDisplay.jsp">
    <select name="movie_id">
    <option value="all">Show All Movies</option>
    
    <%
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT movie_id FROM kyle_movies_data");

        while (rs.next()) {
            int id = rs.getInt("movie_id");
    %>
    
        <option value="<%=id%>"><%=id%></option>
        
    <%
        }
        con.close();
    %>
    
	</select>
	
    <input type="submit" value="Get Movie Info">
    
</form>

<br><br>

<form action="index.jsp" method="get">
    <input type="submit" value="Return to Homepage">
</form>

</body>
</html>