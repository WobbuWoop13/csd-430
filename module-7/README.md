<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 7 – Full CRUD Web Application with JSP & JDBC
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module expands on previous database integration work by implementing a **full CRUD (Create, Read, Update, Delete) web application** using **JavaServer Pages (JSP)** and **JDBC**. The project demonstrates how server-side Java applications can accept user input, interact with a relational database, and dynamically render results in a browser.

This module represents a critical step toward enterprise-style Java web development by combining **persistence**, **business logic**, and **presentation layers** into a cohesive workflow.

---

## Key Features
- **Create Records** – Add new data to the database through web forms.
- **Read Records** – Retrieve and display database records dynamically.
- **Update Records** – Modify existing data using server-side logic.
- **Delete Records** – Remove records from the database.
- **JDBC Integration** – Executes SQL queries from Java code.
- **Dynamic JSP Rendering** – Displays database-driven content in the browser.

---

## Technologies Used
- **Language:** Java  
- **Server-Side Technologies:** JSP, JDBC  
- **Database:** MySQL  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse (Web Tools Platform)  
- **Concepts:**  
  - CRUD operations  
  - JDBC database access  
  - Server-side form handling  
  - MVC-style application structure  

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

### 3. Configure the Database
Ensure MySQL is running locally

Create the required database and tables for this module

Update database credentials in the Java connection class if necessary

### 4. Configure Tomcat
Open the Servers tab in Eclipse

Add Apache Tomcat

Associate the project with the Tomcat server

### 5. Run the Application
Right-click the project

Select Run As → Run on Server

Choose Tomcat

Navigate to the main JSP page for the Module 7 application

### How the Application Works
Users interact with JSP forms in the browser

Submitted data is processed by server-side Java logic

JDBC executes SQL queries against the database

Results are returned to Java objects

JSP pages dynamically render updated data

This flow demonstrates end-to-end server-side CRUD functionality.

### What I Learned
This module strengthened my understanding of:

Implementing full CRUD workflows in Java web applications

Handling user input securely on the server

Integrating JDBC queries with JSP presentation logic

Structuring maintainable server-side applications

Preparing for larger, multi-feature web systems

### Known Limitations
Database credentials are hardcoded

Uses JSP scriptlets rather than JSTL/EL

Limited validation and error handling

No authentication or authorization layer

### Future Improvements
Externalize credentials using environment variables

Refactor database logic into DAO classes

Replace scriptlets with JSTL and Expression Language

Add input validation and error handling

Implement user authentication and roles

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University