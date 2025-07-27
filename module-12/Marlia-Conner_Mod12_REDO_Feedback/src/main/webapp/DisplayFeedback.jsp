<%-- Kyle Marlia-Conner
     07/27/2025
     Module 3 REDO --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

    <title>Feedback Summary</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

    <h1>Thank You for Your Feedback!</h1>
    <p>Here's a summary of what you submitted:</p>

    <%
        // This will gather the user submitted form using request.getParameter() for each of the fields
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String meal = request.getParameter("meal");
        String service = request.getParameter("service");
        String comments = request.getParameter("comments");
    %>

    <table class="feedback-table">

        <tr>        
            <th>Field</th>
            <th>Your Response</th>        
        </tr>
        
        <tr>        
            <td>Name</td>
            <td><%= name %></td>        
        </tr>
        
        <tr>      
            <td>Email</td>
            <td><%= email %></td>      
        </tr>
        
        <tr>        
            <td>Meal</td>
            <td><%= meal %></td>
        </tr>
        
        <tr>       
            <td>Service Rating</td>
            <td><%= service %></td>
        </tr>
        
        <tr>
            <td>Comments</td>
            <td><%= comments %></td>
        </tr>
        
    </table>
    
</body>
</html>
