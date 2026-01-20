<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 6 – JDBC Database Integration with JSP
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module focuses on **integrating a relational database into a Java web application** using **JDBC** and **JavaServer Pages (JSP)**. Building on earlier modules that introduced JSP fundamentals and JavaBeans, this project demonstrates how server-side Java applications retrieve data from a database and present it dynamically to users.

The assignment represents a major milestone in the course by combining **data persistence**, **backend logic**, and **server-rendered views**.

---

## Key Features
- **JDBC Connectivity** – Establishes a connection between Java and a MySQL database.
- **Database Queries** – Retrieves structured data from relational tables.
- **JavaBeans / Data Objects** – Encapsulates database records in Java classes.
- **JSP Data Rendering** – Displays database-driven content in the browser.
- **Separation of Concerns** – Distinguishes between data access, logic, and presentation layers.

---

## Technologies Used
- **Language:** Java  
- **Server-Side Technologies:** JSP, JDBC  
- **Database:** MySQL  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse (Web Tools Platform)  
- **Concepts:**  
  - JDBC drivers and connections  
  - SQL queries from Java  
  - MVC-style architecture  
  - Server-side data rendering  

---

## Getting Started (set up for local development)

Follow the steps below to run this module locally.

### Prerequisites
- Java JDK 8 or newer
- Apache Tomcat 9
- MySQL Server
- Eclipse IDE with Web Tools Platform (WTP)
- Git

---

### 1. Clone the Repository
git clone https://github.com/WobbuWoop13/csd-430.git

### 2. Import Project into Eclipse
Open Eclipse

Select File → Import

Choose Existing Projects into Workspace

Select the cloned csd-430 directory

Finish the import

The included .project and .classpath files configure the project for Eclipse.

### 3. Configure the Database
Ensure MySQL is running locally

Create the required database and tables (per the module instructions)

Update database credentials in the Java connection class if needed

### 4. Configure Tomcat
Open the Servers tab in Eclipse

Add Apache Tomcat

Associate the project with the Tomcat server

### 5. Run the Application
Right-click the project

Select Run As → Run on Server

Choose Tomcat

Navigate to the JSP page that displays database content

### How the Application Works
A JSP page receives a client request

Java code establishes a JDBC connection to MySQL

SQL queries retrieve data from the database

Results are mapped to Java objects

JSP renders the data dynamically in the browser

This flow demonstrates a complete server-side data pipeline, from database to user interface.

### What I Learned
This module strengthened my understanding of:

Using JDBC to connect Java applications to relational databases

Executing SQL queries from Java code

Structuring server-side applications using MVC principles

Integrating persistence into JSP-based web applications

### Known Limitations
Database credentials are hardcoded

Minimal error handling and logging

No connection pooling

JSP scriptlets are used instead of JSTL/EL

### Future Improvements
Externalize database credentials using environment variables

Refactor JDBC logic into DAO classes

Replace scriptlets with JSTL and Expression Language

Add CRUD functionality and user input handling

Implement stronger error handling and logging

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University