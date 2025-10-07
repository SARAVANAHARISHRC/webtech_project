<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>CricketShop</title>
  <link rel="stylesheet" href="css/style.css">
  <script src="js/script.js" defer></script>
</head>
<body>
<nav class="nav">
  <div class="brand"><span>🏏</span> CricketShop</div>
  <div class="actions">
    <a href="index.jsp">Home</a>
    <a href="products.jsp">Products</a>
    <% 
       if (session.getAttribute("userId") == null) { 
    %>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Sign up</a>
    <% 
       } else { 
    %>
        <a href="cart.jsp">Cart</a>
        <a href="orders.jsp">Orders</a>
        <form action="LoginServlet" method="post" style="display:inline;">
          <input type="hidden" name="action" value="logout"/>
          <button type="submit">Logout</button>
        </form>
    <% } %>
  </div>
</nav>
<div class="container">
