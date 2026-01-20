<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 9 – Enhanced Movie Database Web Application
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module represents the **final iteration of the Movie Database web application** developed throughout **CSD 430**. Building on the CRUD functionality implemented in earlier modules, this version refines the application structure, improves data handling, and reinforces best practices for server-side Java web development.

The project demonstrates a **complete Java/JSP/JDBC workflow**, closely resembling the architecture of traditional enterprise Java web applications.

---

## Key Features
- **Database-Driven Movie Management** – Persistent movie records stored in MySQL.
- **Full CRUD Operations** – Create, read, update, and delete movie entries.
- **Refined Server-Side Logic** – Improved handling of user input and database interaction.
- **JavaBeans / DAO Usage** – Encapsulates data access logic for maintainability.
- **Dynamic JSP Rendering** – Displays updated data immediately in the browser.
- **MVC-Style Architecture** – Clear separation between data, logic, and presentation.

---

## Technologies Used
- **Language:** Java  
- **Server-Side Technologies:** JSP, JDBC  
- **Database:** MySQL  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse (Web Tools Platform)  
- **Concepts:**  
  - CRUD workflows  
  - JDBC integration  
  - JavaBeans / DAO patterns  
  - MVC fundamentals  
  - Server-side form processing  

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

Create or reuse the Movie Database schema

Update database credentials in the Java connection classes if required

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

Form submissions are processed server-side

JDBC executes SQL queries against MySQL

JavaBeans map database records to objects

JSP pages dynamically render results

This module demonstrates a complete, end-to-end Java web application lifecycle.

### What I Learned
This module strengthened my understanding of:

Refining CRUD-based Java web applications

Structuring maintainable server-side code

Managing database interactions at scale

Applying MVC concepts consistently

Preparing applications for production-style enhancements

### Known Limitations
Database credentials are hardcoded

JSP scriptlets are used instead of JSTL/EL

Limited validation and exception handling

No authentication or authorization features

### Future Improvements
Externalize credentials using environment variables

Replace scriptlets with JSTL and Expression Language

Improve validation and error handling

Add user authentication and role management

Introduce pagination and search features

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University