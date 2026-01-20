<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 1 – JSP Fundamentals & Server-Side Rendering
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module introduces **server-side web development using JavaServer Pages (JSP)**. The project demonstrates how dynamic content can be generated on the server using embedded Java logic and rendered as HTML in the browser.

The assignment establishes the foundation for later modules by focusing on **JSP syntax, request handling, and server-side execution**, running within a Java servlet container.

---

## Key Features
- **JSP Page Rendering** – Generates HTML content dynamically on the server.
- **Embedded Java Logic** – Uses JSP scriptlets and expressions.
- **Server-Side Execution** – Demonstrates how JSP is compiled and executed by the server.
- **Web Application Structure** – Introduces Java web application file organization.

---

## Technologies Used
- **Language:** Java  
- **Server-Side Technology:** JavaServer Pages (JSP)  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse (Java EE / Web Tools)  
- **Concepts:**  
  - Server-side rendering  
  - JSP lifecycle  
  - Scriptlets and expressions  
  - Request/response flow  

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

Finish the import

### 3. Configure Tomcat
Open Servers tab in Eclipse

Add Apache Tomcat

Point Eclipse to your local Tomcat installation

Associate the project with the Tomcat server

### 4. Run the JSP File
Right-click the project

Select Run As → Run on Server

Choose Tomcat

The JSP page will open in your browser

### What the JSP Does
When accessed through the browser, the JSP file:

Executes Java code on the server

Dynamically generates HTML output

Sends the rendered page to the client browser

This demonstrates the difference between static HTML and server-generated content.

### What I Learned
This module strengthened my understanding of:

How JSP pages are processed by a servlet container

The JSP request/response lifecycle

Embedding Java logic within server-rendered views

Basic Java web application deployment using Tomcat

### Known Limitations
Uses JSP scriptlets instead of modern JSTL/EL

No MVC separation at this stage

No database interaction yet

### Future Improvements
Refactor logic into servlets

Replace scriptlets with JSTL and Expression Language

Add form handling and request parameters

Introduce database connectivity in later modules

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University