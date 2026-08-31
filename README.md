# CareerStream 🚀

**CareerStream** is a comprehensive, full-stack recruitment and job application platform built with **Spring Boot** and **Java 17**. It streamlines the hiring process by providing dedicated portals for Students, Recruiters, and Administrators.

---

## 🌟 Key Features

### For Students 🎓
* **Job Discovery:** Browse and search for open job postings.
* **Profile Management:** Maintain an up-to-date resume, education details, and portfolio.
* **Application Tracking:** Apply for jobs and track the status of applications (Applied, Shortlisted, Interview, Selected, Rejected).
* **Watchlist:** Save jobs to a watchlist for later viewing.

### For Recruiters 🏢
* **Job Management:** Post, edit, and manage job listings.
* **Applicant Tracking:** View all applications for a specific job posting.
* **Candidate Workflow:** Move candidates through the pipeline (Shortlist -> Interview -> Offer/Reject).
* **Task Management:** Manage internal recruitment tasks and to-dos.
* **Secure Dashboard:** A modern, flat-UI dashboard with BFCache-protected secure routing.

### For Administrators ⚙️
* **User Management:** Approve, block, or manage recruiter accounts.
* **Platform Oversight:** Full view of all students, recruiters, and platform metrics.

---

## 🛠️ Tech Stack

* **Backend:** Java 17, Spring Boot 3.x
* **Database:** MySQL, Spring Data JPA (Hibernate)
* **Frontend:** JSP (JavaServer Pages), JSTL, HTML5, CSS3, JavaScript
* **Security:** Custom Session Management & Filter-based Routing
* **Email:** Spring Boot Mail (`JavaMailSender`) for notifications
* **Build Tool:** Maven

---

## 📋 Prerequisites

Before you begin, ensure you have the following installed on your machine:
* [Java Development Kit (JDK) 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
* [Apache Maven](https://maven.apache.org/download.cgi)
* [MySQL Server](https://dev.mysql.com/downloads/mysql/)
* Any modern IDE (IntelliJ IDEA, Eclipse, STS, or VS Code)

---

## 🚀 Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/CareerStream.git
   cd CareerStream
   ```

2. **Configure the Database**
   * Open your MySQL client and create a new database:
     ```sql
     CREATE DATABASE careerstream_db;
     ```
   * Open `src/main/resources/application.properties` and update the datasource credentials:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/careerstream_db
     spring.datasource.username=your_mysql_username
     spring.datasource.password=your_mysql_password
     ```
   *(Note: The application uses Hibernate `update` to automatically generate the database schema).*

3. **Build the Project**
   ```bash
   mvn clean install
   ```

4. **Run the Application**
   ```bash
   mvn spring-boot:run
   ```
   Alternatively, you can run the `JfsdsdpProjectApplication.java` main class directly from your IDE.

5. **Access the Platform**
   Open your web browser and navigate to:
   ```
   http://localhost:2015
   ```
   *(Port may vary based on your `server.port` configuration in `application.properties`)*

---

## 📂 Project Structure

```text
JFSDSDPProject/
├── src/
│   ├── main/
│   │   ├── java/com/klef/jfsd/springboot/
│   │   │   ├── controller/      # Spring MVC Controllers
│   │   │   ├── model/           # JPA Entities (Student, Recruiter, Jobs, etc.)
│   │   │   ├── repository/      # Spring Data JPA Repositories
│   │   │   └── service/         # Business Logic Layer
│   │   ├── resources/
│   │   │   └── application.properties  # App configurations
│   │   └── webapp/              # JSP Views, CSS, and static assets
│   └── test/                    # Unit & Integration Tests
├── pom.xml                      # Maven dependencies
└── .gitignore                   # Ignored files for Git
```

---

## 🛡️ Security Notes
- Secure pages are protected by session checks.
- BFCache vulnerabilities are mitigated via strict `Cache-Control` headers and `pageshow` event listeners to prevent navigating to secure pages via the browser's back button after logging out.
- Sensitive environment properties should be placed in `application-secret.properties` (which is ignored by Git).

---

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! 
Feel free to check the [issues page](../../issues) if you want to contribute.

## 📝 License
This project is for educational and portfolio purposes.
