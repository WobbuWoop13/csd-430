<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 8 – Movie Database Web Application
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module represents the culmination of concepts learned throughout **CSD 430** by implementing a **database-driven Java web application**. The project is a **Movie Database system** that allows users to interact with movie records stored in a relational database through a web interface.

The application integrates **JSP**, **JavaBeans**, and **JDBC** to demonstrate full **server-side CRUD functionality** using Java and MySQL.

---

## Key Features
- **Database-Backed Movie Records** – Stores and retrieves movie data from MySQL.
- **Full CRUD Operations** – Create, Read, Update, and Delete movie entries.
- **JavaBeans / DAO Pattern** – Encapsulates database access logic.
- **JSP Frontend** – Dynamically renders movie data in the browser.
- **JDBC Integration** – Executes SQL queries from server-side Java code.
- **MVC-Style Architecture** – Separates data, logic, and presentation layers.

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
  - JavaBeans / DAO pattern  
  - MVC fundamentals  
  - Server-side form handling  

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

Create the required database and tables for the Movie Database

Update database credentials in the Java database connection class if needed

### 4. Configure Tomcat
Open the Servers tab in Eclipse

Add Apache Tomcat

Associate the project with the Tomcat server

### 5. Run the Application
Right-click the project

Select Run As → Run on Server

Choose Tomcat

Open the Movie Database application in your browser

### How the Application Works
Users interact with JSP pages to manage movie records

Form submissions are processed on the server

JDBC executes SQL queries against the MySQL database

JavaBeans map database records to objects

JSP pages dynamically render updated data

This workflow demonstrates a complete server-side Java web application lifecycle.

### What I Learned
This module strengthened my understanding of:

Designing and implementing database-driven Java web applications

Managing CRUD operations using JDBC

Structuring server-side projects with separation of concerns

Applying MVC concepts in Java/JSP applications

Preparing Java web apps for real-world scalability

### Known Limitations
Database credentials are hardcoded

JSP scriptlets are used instead of JSTL/EL

Limited input validation and error handling

No authentication or authorization layer

### Future Improvements
Externalize database credentials using environment variables

Refactor database logic into dedicated DAO classes

Replace scriptlets with JSTL and Expression Language

Add input validation and error handling

Implement user authentication and role-based access

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University