<%@page import="com.milknest.milknest_online_services.DataAccess"%>
<%@page import="com.milknest.milknest_online_services.category"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
    insertCart cartobj=new insertCart();
%>
<%
     Integer userIDD = (Integer) session.getAttribute("userId");
    //delete
    if (request.getParameter("delete") != null) {

        try {

            int id = Integer.parseInt(request.getParameter("delete"));

            cartobj.deleteCartProducts(id);
        } catch (Exception ex) {

            out.println(ex);
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <%@include file="WEB-INF/Navbar.jsp" %>
<%
   

    if (userIDD == null) {
        response.sendRedirect("Login.jsp");
        return;
    }

    Connection con = DataAccess.getConnection();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    double grandTotal = 0.0;

    try {
        String sql = "SELECT * FROM tbl_cartmaster WHERE userId = ?";
        stmt = con.prepareStatement(sql);
        stmt.setInt(1, userIDD);
        rs = stmt.executeQuery();
%>
<div class="container mt-4">
    <h2 class="text-center mb-4">My Shopping Cart</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Price (₹)</th>
                <th>Total Amount (₹)</th>
                <th>Control</th>
            </tr>
        </thead>
        <tbody>
            <% 
                while (rs.next()) {
                    double itemTotal = rs.getInt("quantity") * rs.getDouble("price");
                    grandTotal += itemTotal;
            %>
            <tr>
                <td><%= rs.getString("ProductName") %></td>
                <td><%= rs.getInt("quantity") %></td>
                <td>₹<%= rs.getDouble("price") %></td>
                <td>₹<%= itemTotal %></td>
                <td><a href="?delete=<%= rs.getInt("cartID") %>" class="btn btn-danger btn-sm">Delete</a></td>
               
            </tr>
            <% } %>
        </tbody>
        <!-- Footer Row for Grand Total -->
        <tfoot>
            <tr>
                <td colspan="3" class="text-end"><strong>Grand Total:</strong></td>
                <td colspan="2" class="text-start">₹<%= grandTotal %></td>
            </tr>
        </tfoot>
    </table>
<form action="OrderServlet" method="post" class="mt-4">
        <div class="mb-3">
            <label for="paymentMethod" class="form-label">Select Payment Method:</label>
            <select name="paymentMethod" id="paymentMethod" class="form-select" required>
                 <option value="Cash on Delivery">Cash on Delivery</option>
                <option value="Credit Card">Credit Card(Not Available)</option>
                <option value="Debit Card">Debit Card(Not Available)</option>
                <option value="Net Banking">Net Banking(Not Available)</option>           
            </select>
        </div>
        <button type="submit" class="btn btn-success">Place Order</button>
    </form>
    <!-- Buttons Section -->
    <div class="d-flex justify-content-between mt-4">
        <!-- Go Back to Shopping Button -->
        <a href="Shop.jsp" class="btn btn-primary">Go Back to Shopping</a>
     
    </div>
</div>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (con != null) con.close();
    }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
