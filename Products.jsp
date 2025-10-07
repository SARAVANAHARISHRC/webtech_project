<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.cricketapp.models.product" %>
<%@ page session="true" %>
<%@ include file="header.jsp" %
<div class="container">
    <div class="card" style="margin-bottom:1rem;">
        <h2>Products</h2>
        <% if (session.getAttribute("userId") != null) { %>
            <a class="btn" href="product_form.jsp">+ Add Product</a>
        <% } %>
    </div>
<div class="grid">
        <%
            List<product> products = (List<product>) request.getAttribute("products");
            if (products == null || products.isEmpty()) {
        %>
            <div class="empty">No products available.</div>
        <% } else {
                for (product p : products) {
        %>
            <div class="card">
                <h3><%= p.getTitle() %></h3>
                <p><%= p.getDescription() %></p>
                <div class="price">&#8377;<%= p.getPrice() %></div>

                <%-- Add to cart form --%>
                <form action="cart" method="post" style="margin-top:.5rem;">
                    <input type="hidden" name="action" value="add"/>
                    <input type="hidden" name="productId" value="<%= p.getId() %>"/>
                    <input type="number" name="quantity" value="1" min="1" max="<%= p.getQuantity() %>" />
                    <button class="btn" type="submit">Add to Cart</button>
                </form>
            </div>
        <%      }
            } %>
    </div>
</div>
<%@ include file="footer.jsp" %>
