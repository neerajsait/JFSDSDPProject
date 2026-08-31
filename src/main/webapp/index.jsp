<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Career Stream</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
  @charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body {
  background-image: url('../images/HomePage.jpg');
  background-size: cover; 
  background-attachment: fixed;
  background-position: center center; 
  background-repeat: no-repeat;
  overflow: hidden; 
  height: 100vh;
}

nav {
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 75px;
  background: rgba(15, 23, 42, 0.65);
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
  z-index: 100;
  transition: all 0.3s ease;
}
nav .navbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 100%;
  max-width: 85%;
  margin: auto;
}
nav .navbar .logo a {
  color: #ffffff;
  font-size: 26px;
  font-weight: 700;
  letter-spacing: 0.5px;
  text-decoration: none;
}
nav .navbar .menu {
  display: flex;
}
.navbar .menu li {
  list-style: none;
  margin: 0 20px;
}
.navbar .menu li a {
  color: #e2e8f0;
  font-size: 16px;
  font-weight: 500;
  text-decoration: none;
  transition: all 0.3s ease;
  position: relative;
  padding-bottom: 5px;
}
.navbar .menu li a::after {
  content: '';
  position: absolute;
  width: 0;
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: #6366F1;
  transition: width 0.3s ease;
}
.navbar .menu li a:hover {
  color: #ffffff;
}
.navbar .menu li a:hover::after {
  width: 100%;
}

.hero-content {
  display: flex;
  align-items: center;
  height: 100vh;
  padding-top: 75px; 
  max-width: 85%;
  margin: 0 auto;
  justify-content: flex-end; 
}

.proverb {
  background: rgba(255, 255, 255, 0.5);
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  border: 1px solid rgba(255, 255, 255, 0.6);
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
  color: #0f172a;
  padding: 50px;
  border-radius: 28px;
  text-align: left;
  max-width: 500px;
  animation: slideInUp 0.8s cubic-bezier(0.16, 1, 0.3, 1) forwards;
  opacity: 0;
  transform: translateY(30px);
}

@keyframes slideInUp {
  to { opacity: 1; transform: translateY(0); }
}

.proverb h1 {
  font-size: 46px;
  font-weight: 700;
  line-height: 1.2;
  margin-bottom: 10px;
}

.proverb p {
  font-size: 26px;
  font-weight: 500;
  color: #334155;
  margin-bottom: 35px;
}

button.sign-in-btn {
  border: 0;
  border-radius: 14px;
  color: #ffffff;
  padding: 16px 36px;
  background: linear-gradient(135deg, #4F46E5 0%, #6366F1 100%);
  box-shadow: 0 8px 25px rgba(79, 70, 229, 0.4);
  display: flex;
  transition: all 0.3s ease;
  align-items: center;
  gap: 12px;
  font-size: 18px; 
  font-weight: 600;
  cursor: pointer;
}

button.sign-in-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 30px rgba(79, 70, 229, 0.5);
  background: linear-gradient(135deg, #4338CA 0%, #4F46E5 100%);
}

button.sign-in-btn:active {
  transform: translateY(1px);
}

.arrow-wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
}

.arrow {
  width: 14px;
  height: 2px;
  background: #ffffff;
  position: relative;
  transition: width 0.3s ease;
}

.arrow::before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  border: solid #ffffff;
  border-width: 0 2px 2px 0;
  display: inline-block;
  top: -4px;
  right: 0px;
  padding: 4px;
  transform: rotate(-45deg);
  transition: 0.3s ease;
}

button.sign-in-btn:hover .arrow {
  width: 18px;
}
  
</style>
</head>
<body>
  
  <div class="hero-content">
    <div class="proverb">
      <h1>Doors don’t open themselves.</h1>
      <p>Knock.</p>
      
      <button class="sign-in-btn" onclick="location.href='roleselection'">
        Sign In
        <div class="arrow-wrapper">
          <div class="arrow"></div>
        </div>
      </button>
    </div>
  </div>

</body>
</html>
