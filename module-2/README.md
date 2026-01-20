<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 2 – JSP Forms & Request Processing
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module builds on the fundamentals introduced in Module 1 by focusing on **handling user input through JSP forms** and processing request data on the server. The assignment demonstrates how data submitted from an HTML form is received, interpreted, and displayed dynamically using JavaServer Pages (JSP).

The project emphasizes the **request/response model** that underpins server-side web development and prepares the groundwork for database-backed form processing in later modules.

---

## Key Features
- **HTML Form Handling** – Accepts user input through form elements.
- **Request Parameter Processing** – Retrieves submitted data using JSP request objects.
- **Dynamic Output Rendering** – Displays submitted values back to the user.
- **Server-Side Execution Flow** – Demonstrates how form data moves from client to server.

---

## Technologies Used
- **Language:** Java  
- **Server-Side Technology:** JavaServer Pages (JSP)  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse (Web Tools Platform)  
- **Concepts:**  
  - HTTP request/response lifecycle  
  - JSP request parameters  
  - Server-side form processing  
  - Dynamic HTML generation  

---

## Getting Started (set up for local development)

Follow the steps below to run this module locally.

### Prerequisites
- Java JDK 8 or newer
- Apache Tomcat 9
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

Complete the import

### 3. Configure Tomcat
Open the Servers tab in Eclipse

Add Apache Tomcat

Point Eclipse to your local Tomcat installation

Associate the project with the Tomcat server

### 4. Run the Application
Right-click the project

Select Run As → Run on Server

Choose Tomcat

Open the Module 2 JSP page in your browser

### What the JSP Does
When accessed in a browser, the Module 2 JSP page:

Displays an HTML form

Accepts user input

Submits the data to the server

Retrieves submitted values using request parameters

Dynamically displays the results back to the user

This demonstrates basic server-side data handling without a database, a critical step before introducing persistence layers.

### What I Learned
This module strengthened my understanding of:

Handling user input on the server

Accessing request parameters in JSP

How form submissions trigger server-side processing

The role of JSP in dynamic web applications

### Known Limitations
Uses JSP scriptlets instead of modern JSTL/EL

No input validation beyond basic handling

No persistence or database integration yet

### Future Improvements
Add server-side input validation

Refactor logic into servlets

Replace scriptlets with JSTL and Expression Language

Persist form data to a database in later modules

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University