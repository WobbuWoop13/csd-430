<p align="center">
  <img src="https://content.presspage.com/uploads/2543/1920_purple-seal-unstoppable-bkg-1800x1200.png?10000" alt="Purple Seal Unstoppable" width="400"/>
</p>

# Module 4 – JavaBeans & MVC Foundations (Movie Bean)
*CSD 430 Server Side Development*  
<sub>Bellevue University · Course Module Assignment</sub>

---

## Introduction
This module introduces **JavaBeans** as a core component of server-side Java web applications. The project centers around a **Movie Bean**, which encapsulates movie data and business logic while separating it from presentation logic handled by JSP pages.

The assignment reinforces **MVC-style separation of concerns**, preparing the application structure for more scalable, maintainable server-side development in later modules.

---

## Key Features
- **JavaBean Implementation** – Encapsulates movie data using properties, getters, and setters.
- **JSP Integration** – Accesses JavaBean properties from JSP pages.
- **Separation of Concerns** – Keeps business logic out of JSP presentation code.
- **Reusable Data Model** – Demonstrates how JavaBeans support reusable application components.

---

## Technologies Used
- **Language:** Java  
- **Server-Side Technologies:** JavaServer Pages (JSP), JavaBeans  
- **Server:** Apache Tomcat  
- **IDE:** Eclipse (Java EE / Web Tools Platform)  
- **Concepts:**  
  - JavaBeans conventions  
  - Encapsulation and data modeling  
  - MVC architecture fundamentals  
  - JSP–Java integration  

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

The included .project and .classpath files define the project structure and dependencies for Eclipse.

### 3. Configure Tomcat
Open the Servers tab in Eclipse

Add Apache Tomcat

Associate the project with the Tomcat server

### 4. Run the Application
Right-click the project

Select Run As → Run on Server

Choose Tomcat

Navigate to the JSP page that utilizes the Movie Bean

### What the Movie Bean Does
The Movie Bean:

Defines private properties representing movie attributes

Exposes public getter and setter methods

Acts as the data model accessed by JSP pages

Keeps business data separate from presentation logic

JSP pages retrieve and display movie information through the bean, demonstrating clean server-side architecture.

### What I Learned
This module strengthened my understanding of:

How JavaBeans encapsulate application data

Why separating logic from presentation improves maintainability

How JSP pages interact with backend Java objects

Foundational MVC patterns in Java web development

### Known Limitations
Uses JSP scriptlets instead of JSTL/EL

No database persistence at this stage

Bean data is not stored between sessions

### Future Improvements
Replace scriptlets with JSTL and Expression Language

Integrate JDBC for database-backed movie data

Add validation and error handling

Introduce controller servlets for full MVC separation

### Author
Kyle Marlia-Conner
B.S. Software Development · Bellevue University