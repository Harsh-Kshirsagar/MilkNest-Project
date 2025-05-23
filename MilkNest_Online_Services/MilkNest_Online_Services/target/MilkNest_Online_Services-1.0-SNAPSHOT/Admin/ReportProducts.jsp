<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.milknest.milknest_online_services.DataAccess"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Report</title>
    <style>
        body { font-family: Arial, sans-serif; }
        h2 { text-align: center; margin-top: 50px; }
        table { width: 80%; border-collapse: collapse; margin: 20px auto; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #007bff; color: white; }
        .pagination { margin-top: 20px; text-align: center; }
        .pagination a { padding: 8px 16px; text-decoration: none; color: #007bff; border: 1px solid #ddd; margin: 0 4px; }
        .pagination a.active { background-color: #007bff; color: white; }
        img { width: 50px; height: 50px; object-fit: cover; }
    </style>
</head>
<body>
    <%@include file="ReportsNavbar.jsp" %>
    <h2>Product Report</h2>
    <%
        int currentPage = 1;
        int recordsPerPage = 5;
        if (request.getParameter("page") != null) {
            currentPage = Integer.parseInt(request.getParameter("page"));
        }

        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            con = DataAccess.getConnection();
            int start = (currentPage - 1) * recordsPerPage;

            String query = "SELECT productID, productname, productImage, productDescription, productSaleprise, productpurchaseprice, productCatID FROM tb_productsmaster LIMIT ?, ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, start);
            stmt.setInt(2, recordsPerPage);
            rs = stmt.executeQuery();
    %>
    
    <table>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Image</th>
            <th>Description</th>
            <th>Sale Price</th>
            <th>Purchase Price</th>
            <th>Category ID</th>
        </tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("productID") %></td>
            <td><%= rs.getString("productname") %></td>
            <td><img src="<%= rs.getString("productImage") %>" alt="Product Image"></td>
            <td><%= rs.getString("productDescription") %></td>
            <td><%= rs.getDouble("productSaleprise") %></td>
            <td><%= rs.getDouble("productpurchaseprice") %></td>
            <td><%= rs.getInt("productCatID") %></td>
        </tr>
        <%
            }
        %>
    </table>
    
    <div class="pagination">
        <%
            stmt = con.prepareStatement("SELECT COUNT(productID) FROM tb_productsmaster");
            rs = stmt.executeQuery();
            rs.next();
            int totalRecords = rs.getInt(1);
            int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);
            for (int i = 1; i <= totalPages; i++) {
        %>
        <a href="?page=<%= i %>" class="<%= (i == currentPage) ? "active" : "" %>"><%= i %></a>
        <%
            }
        %>
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
</body>
</html>
