<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.milknest.milknest_online_services.category"%>
<%@page import="java.sql.ResultSet"%>

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<%!
    category C = new category();
%>
<%!
    int eid, productid;
    double productSaleprise;
    String productname, productImage, productDescription;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop By Categories</title>
    </head>
    <body>
        <%@include file="WEB-INF/Navbar.jsp" %>

        <section class="container mb-5">
            <div class="row">
                <div class="row">
                    <%     eid = Integer.parseInt(request.getParameter("catid"));
                        ResultSet rs2 = C.getCatsByid(eid);
                        
                        while (rs2.next()) {
                            productid = rs2.getInt("productID");
                            productname = rs2.getString("productname");
                            productSaleprise = rs2.getDouble("productSaleprise");
                            productImage = rs2.getString("productImage");
                            productDescription = rs2.getString("productDescription");
                    %>
                    <div class="col-md-3 mt-3">
                        <div class="card">
                            <img src='<%=productImage%>' class="card-img-top" alt="Product Image" style="height: 200px">
                            <div class="card-body">
                                <h5 class="card-title"><%=productname%></h5>
                                <p class="card-text"><%=productDescription%></p>
                                <div class="d-flex justify-content-center">
                                    <h6>RS. <%=productSaleprise%></h6>
                                    <h6><del class="text-muted ml-2">RS. <%=productSaleprise + 10%></del></h6>
                                </div>
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="<%=productid%>">
                                    <input type="hidden" name="productName" value="<%=productname%>">
                                    <input type="hidden" name="price" value="<%=productSaleprise%>">
                                    <button type="submit" class="btn btn-primary d-flex justify-content-center">
                                        <i class="fas fa-shopping-cart text-dark mr-1"></i> ADD to Cart
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <% } %>      
                </div>
            </div>
        </section>

        <%@include file="WEB-INF/Footer.jsp" %>  
    </body>
</html>

<style>
    .products-container img {
        width: 100%;
    }
</style>
