<%-- Kyle Marlia-Conner
     07/27/2025
     Module 3 REDO--%>
     
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

    <title>Kyle's Sushi Emporium Feedback</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"> <%-- I made an optional CSS for this to theme around sushi --%>

</head>

<body>

    <h1>We Value Your Feedback</h1>
    <p>Please fill out the form below to let us know how we did and what we could do better!</p>

    <form action="DisplayFeedback.jsp" method="post">
        <label for="name">Your Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email Address:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="meal">Which meal did you have?</label><br>
        <select id="meal" name="meal">
            <option value="Sushi">Sushi</option>
            <option value="Nigiri">Nigiri</option>
            <option value="Sashimi">Sashimi</option>
        </select><br><br>

        <label>Rate your service:</label><br>
        <input type="radio" name="service" value="Excellent" required> Excellent<br>
        <input type="radio" name="service" value="Good"> Good<br>
        <input type="radio" name="service" value="Poor"> Poor<br><br>

        <label for="comments">Additional Comments:</label><br>
        <textarea id="comments" name="comments" rows="4" cols="40"></textarea><br><br>

        <input type="submit" value="Submit Feedback">
        
    </form>
</body>
</html>
