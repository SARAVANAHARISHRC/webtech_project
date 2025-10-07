
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
  <div class="container">
    <h2>Welcome, <%= session.getAttribute("user") %>!</h2>
    <p>You are successfully logged in.</p>
    <a href="login.jsp">Logout</a>
  </div>
</body>
</html>

