<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.milknest.milknest_online_services.DataAccess"%>

<%
    // Get search query from request
    String searchQuery = request.getParameter("query");
    if (searchQuery == null || searchQuery.trim().isEmpty()) {
        searchQuery = ""; // Prevent null errors
    }

    // Initialize database objects
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    boolean hasProducts = false;

    try {
        // Establish Database Connection
        DataAccess db = new DataAccess();
        con = db.getConnection(); // Ensure this method is returning a valid connection

        // Debug: Print connection status
        if (con == null) {
            out.println("<h3 style='color:red;'>Database Connection Failed!</h3>");
        }

        // SQL Query
        String sql = "SELECT productID, productname, productImage, productDescription, productSaleprise " +
                     "FROM tb_productsmaster " +
                     "WHERE LOWER(productname) LIKE LOWER(?)";

        ps = con.prepareStatement(sql);
        ps.setString(1, "%" + searchQuery + "%"); // Set query parameter correctly

        // Debug: Print the query being executed
        out.println("<p>Executing SQL: " + sql.replace("?", "'%" + searchQuery + "%'") + "</p>");

        rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

    <%@include file="WEB-INF/Header.jsp" %>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Search Results for "<span class="text-primary"><%= searchQuery %></span>"</h2>

        <div class="row">
            <% 
                int rowCount = 0;
                while (rs.next()) { 
                    hasProducts = true;
                    rowCount++;
            %>
                <div class="col-md-3 mt-3 d-flex align-items-stretch">
                    <div class="card w-100">
                        <img src="<%= rs.getString("productImage") %>" class="card-img-top" alt="<%= rs.getString("productname") %>" style="height: 200px; object-fit: cover;">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title"><%= rs.getString("productname") %></h5>
                            <div class="d-flex justify-content-center">
                                <h6>₹<%= rs.getDouble("productSaleprise") %></h6>
                            </div>
                            <a href="CartServlet?productId=<%= rs.getInt("productID") %>&productName=<%= rs.getString("productname") %>&price=<%= rs.getDouble("productSaleprise") %>&quantity=1" 
                               class="btn btn-primary mt-auto w-100 d-flex justify-content-center align-items-center">
                                Add to Cart
                            </a>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>

        <% if (!hasProducts) { %>
            <div class="alert alert-warning text-center mt-4">
                <h4>No products found for "<%= searchQuery %>".</h4>
            </div>
        <% } else { %>
            <h4>Found <%= rowCount %> products</h4>
        <% } %>
    </div>

    <%@include file="WEB-INF/Footer.jsp" %>

</body>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    } finally {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (con != null) con.close();
    }
%>
