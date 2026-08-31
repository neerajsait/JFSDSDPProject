<!DOCTYPE html>
<%@page import="com.klef.jfsd.springboot.model.Student"%>
<html lang="en">
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
	Student s = (Student) session.getAttribute("student");

	if(s==null)
	{
		response.sendRedirect("sessionexpiry");
		return;
	}
	
	long id = s.getId();

%>




<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
    <link rel="stylesheet" href="./css/studentsidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
    @charset "UTF-8";

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'poppins', sans-serif;
}

body {
    font-family: 'Poppins', sans-serif;
    display: flex;
    height: 100vh;
    background-color: #f5f5f5;
    overflow-x: hidden;
    position: relative;
}


.menu-icon {
    position: fixed;
    top: 20px;
    left: 20px;
    font-size: 30px;
    cursor: pointer;
    color: gray;
    z-index: 1000; 
}


.sidebar {
    width: 290px;
    background-color: #2f335a;
    padding: 20px;
    color: white;
    position: fixed;
    left: -290px; 
    top: 0;
    height: 100%;
    transition: left 0.3s ease;
    z-index: 900; 
    overflow-y: auto; 
}

.sidebar.active {
    left: 0;
}

.sidebar-header {
    margin-bottom: 20px;
    font-family: 'Poppins', sans-serif;
}

.sidebar h2 {
    font-size: 22px;
    color: #ffffff;
    font-family: 'Poppins', sans-serif;
}

.sidebar ul {
    list-style: none;
}

.sidebar ul li {
    margin-bottom: 15px;
}

.sidebar ul li a {
    color: #eaeaea;
    text-decoration: none;
    font-size: 16px;
    display: flex;
    align-items: center;
    padding: 10px;
    border-radius: 5px;
    transition: background 0.3s, color 0.3s;
    font-family: 'Poppins', sans-serif;
}

.sidebar ul li a:hover {
    background-color: #7f8996;
    color: #ffffff;
}

.sidebar ul li a i {
    margin-right: 10px;
}


.arrow {
    margin-left: auto;
    transition: transform 0.3s ease;
}


.dropdown-content {
    display: none;
    list-style: none;
    padding-left: 20px;
    background-color: #7f8996;
    margin-top: 10px;
    border-radius: 5px;
    overflow: hidden;
    max-height: 0;
    transition: max-height 0.3s ease-in-out;
    font-family: 'Poppins', sans-serif;
}

.dropdown-content li {
    margin: 5px 0;
    font-family: 'Poppins', sans-serif;
}

.dropdown-content li a {
    color: #eaeaea;
    text-decoration: none;
    font-size: 14px;
    display: flex;
    align-items: center;
    padding: 8px 15px;
    border-radius: 5px;
    transition: background 0.3s;
    font-family: 'Poppins', sans-serif;
}

.dropdown-content li a:hover {
    background-color: #0112AC;
}

.show {
    display: block;
    max-height: 300px;
}


.container {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    transition: margin-left 0.3s ease;
    margin-left: 0;
}

.sidebar.active ~ .container {
    margin-left: 250px; 
}

.main-content {
    padding: 20px;
    margin-left: 290px; 
    margin-top: 50px; 
    transition: margin-left 0.3s ease;
    flex-grow: 1;
    background-color: #ecf0f1;
    border-radius: 10px;
}


.sidebar.active ~ .main-content {
    margin-left: 0;
}


header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #ffffff;
    padding: 10px 20px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
    border-radius: 10px;
}

header h1 {
    font-size: 24px;
    color: #2c3e50;
    font-family: 'Poppins', sans-serif;
}

.user-info {
    display: flex;
    align-items: center;
    font-family: 'Poppins', sans-serif;
}

.user-info span {
    margin-right: 20px;
    font-size: 18px;
    font-family: 'Poppins', sans-serif;
}

.logout-btn {
    padding: 8px 16px;
    background-color: #e74c3c;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    font-family: 'Poppins', sans-serif;
}

.logout-btn:hover {
    background-color: #c0392b;
}



@media screen and (max-width: 768px) {
    .sidebar {
        width: 100%;
        left: -100%;
    }

    .sidebar.active {
        left: 0;
    }

    .container, .main-content {
        margin-left: 0;
    }

    .dashboard-cards {
        flex-direction: column; 
        gap: 10px; 
    }

    .card {
        min-width: unset; 
    }
}


body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-family: 'Poppins', sans-serif;
    background-color: #f4f6f9;
    font-family: 'Poppins', sans-serif;
}

.login-page {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: #f4f6f9;
}

.login-box {
    background-color: white;
    padding: 40px;
    width: 400px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.logo h1 {
    font-size: 2em;
    color: #0112AC; 
    margin-bottom: 40px;
}

.input-group {
    margin-bottom: 20px;
    text-align: left;
}

.input-group label {
    font-weight: 600;
    font-size: 0.9em;
    color: #333;
}

.input-group input {
    width: 100%;
    padding: 12px 15px;
    font-size: 1em;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f7f9fc;
}

.input-group input:focus {
    border-color: #0112AC;
    outline: none;
    background-color: #fff;
}

.login-btn {
    width: 100%;
    padding: 15px;
    font-size: 1em;
    background-color: #0112AC;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: 600;
}

.login-btn:hover {
    background-color: #0b5ed7;
}

.login-box form {
    width: 100%;
}




    
        .dashboard-cards {
            display: flex;
            flex-direction: column;
            padding: 20px;
        }

        .card-row {
    display: flex;
    justify-content: space-between;
    margin-bottom: 30px;
    gap: 20px;  
}


        .card {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    padding: 20px;
    width: calc(48% - 20px);  
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    margin-right: 20px; 
}

.card:last-child {
    margin-right: 0; 
}


        .card:hover {
            transform: scale(1.05);  
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);  
        }

       .documents-container {
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 30px;
            margin-top: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            color: #0112AC;
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: bold;
        }

        .document-form {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
        }

        .form-section {
            margin-bottom: 30px;
            border-bottom: 1px solid #e0e0e0;
            padding-bottom: 20px;
        }

        .form-section h3 {
            color: #0112AC;
            margin-bottom: 20px;
            font-size: 20px;
        }

        .form-row {
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }

        .form-row label {
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        .form-row input, 
        .form-row textarea {
            padding: 10px;
            border: 1px solid #d0d0d0;
            border-radius: 5px;
            background-color: #f9f9f9;
            color: #333;
        }

        .form-row textarea {
            min-height: 150px;
            resize: vertical;
        }

        .download-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #0112AC;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .download-btn:hover {
            background-color: #1a3fd1;
        }

        embed {
            border: 1px solid #d0d0d0;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .document-form {
                padding: 15px;
            }
        }
   
    </style>
</head>
<body>
    
<script src="${pageContext.request.contextPath}/javascript/studentdashboard.js"></script>

<script src="${pageContext.request.contextPath}/JavaScript/studentdashboard.js"></script>
    
    <div class="sidebar-container">
        
        <div class="menu-icon">
            <i class="fas fa-bars" onclick="toggleSidebar()"></i>
        </div>

        
        <div class="sidebar">
            <div class="sidebar-header"><br><br>
                <h2>Hello <%= s.getId() %></h2> 
            </div>
            <ul>
                <li><a href="studentdashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
    			  <li><a href="applyjobs"><i class="fas fa-briefcase"></i> Apply for jobs</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-btn" onclick="toggleDropdown('students')">
                        <i class="fas fa-eye"></i> View
                        <span class="arrow">&#9662;</span>
                    </a>
                    <ul class="dropdown-content" id="students-dropdown">
                        <li><a href="viewappliedjobs"><i class="fas fa-tachometer-alt"></i> Applied Jobs</a></li>
                        <li><a href="getjobsinwatchlist"><i class="fas fa-bars"></i> Watchlist</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-btn" onclick="toggleDropdown('employers')">
                        <i class="fas fa-user-edit"></i> Profile
                        <span class="arrow">&#9662;</span>
                    </a>
                    <ul class="dropdown-content" id="employers-dropdown">
                        <li><a href="studentprofile"><i class="fas fa-user-circle"></i> Personal Details</a></li>
                        <li><a href="educationdetails"><i class="fas fa-id-card" > </i> Academic Details</a></li>
                        <li><a href="studentdocuments"><i class="fas fa-file-pdf"></i> Documents Uploaded</a></li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-content">
        <header>
            <h1>CareerStream</h1>
            <div class="user-info">
                <span><%= s.getName() %></span>
                <button class="logout-btn" onclick="window.location.href='studentlogout'">Logout</button>
            </div>
        </header>
        
       <div class="documents-container">
            <h2 class="section-title">My Documents</h2>
            
            <form class="document-form">
                

                <div class="form-section">
                    <h3>Profile Summary</h3>
                    <div class="form-row">
                        
                        <textarea readonly>${doc.summary}</textarea>
                    </div>
                </div>

                <div class="form-section">
            <h3>Resume</h3>
            <div class="form-row">
                
                <c:choose>
                    <c:when test="${not empty doc.resume}">
                        
                        <a href="getResume/<%=s.getId() %>" download class="download-btn">Download Resume</a>
                    </c:when>
                    <c:otherwise>
                        <p>No resume uploaded</p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

                <div class="form-section">
                    <h3>Marksheet</h3>
                    <div class="form-row">
                        
                        <c:choose>
                            <c:when test="${not empty doc.marksheet}">
                                
                                <a href="getMarksheets/<%=s.getId() %>" download class="download-btn">Download Marksheet</a>
                                
                            </c:when>
                            <c:otherwise>
                                <p>No marksheet uploaded</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </form>
        </div>

   
       
        
        
    </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    
</body>


    

</html>