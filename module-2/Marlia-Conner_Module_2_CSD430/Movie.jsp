<!-- Kyle Marlia-Conner
	 06/01/2025
	 Module 2 -->
	 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>Favorite Comfort Movie</title>
    <link rel="stylesheet" type="text/css" href="css/Style.css">
</head>

<body>
    <h1>Favorite Comfort Movie: The Lord of the Rings: The Fellowship of the Ring</h1>
    <p>This page lists five of the main characters that take on this dangerous quest in <strong>The Lord of the Rings: The Fellowship of the Ring</strong>.</p>

<%-- Java Scriptlet --%>
    <%
        class Character {
            String name;
            String race;
            String role;

            Character(String name, String race, String role) {
                this.name = name;
                this.race = race;
                this.role = role;
            }
        }

        Character[] characters = {
            new Character("Frodo Baggins", "Hobbit", "Ring Bearer"),
            new Character("Aragorn", "Man", "Ranger / King"),
            new Character("Gandalf", "Maiar", "Wizard"),
            new Character("Legolas", "Sindarin Elf", "Archer"),
            new Character("Gimli", "Dwarf", "Warrior")
        };
    %>
    
<!-- Dynamic HTML Table -->
    <h2>Main Characters</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Race</th>
            <th>Role</th>
        </tr>
        
<%--JSP loop for Table Output --%>
        <% for (Character c : characters) { %>
            <tr>
                <td><%= c.name %></td>
                <td><%= c.race %></td>
                <td><%= c.role %></td>
            </tr>
        <% } %>
        
    </table>

</body>
</html>
