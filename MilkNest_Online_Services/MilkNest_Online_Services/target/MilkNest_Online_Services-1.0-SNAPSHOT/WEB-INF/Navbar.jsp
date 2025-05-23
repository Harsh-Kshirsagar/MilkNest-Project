<%-- 
    Document   : Heder
    Created on : 28 Oct 2024, 12:59:02 pm
    Author     : Santosh
--%>

<%@page import="com.milknest.milknest_online_services.insertCart"%>
<%@page import="com.milknest.milknest_online_services.DataAccess"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="com.milknest.milknest_online_services.category"%>
<%@page import="java.sql.SQLException"%> 

<%
    if (request.getParameter("btnLogout") != null) {
        session.removeAttribute("username");
        response.sendRedirect("SignIn.jsp");
    }

    Integer userIddd = (Integer) session.getAttribute("userId");
    int totalCartProducts = 0;

    if (userIddd != null) {
        try {
            insertCart cartHelper = new insertCart();
            totalCartProducts = cartHelper.getTotalCartProducts(userIddd);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MilkNest Online Services</title>


        <!--           Style Link    -->
        <link rel="stylesheet" href="style.css">
        <!--         box icons -->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">  
    </head>
    <body>
        <!-- Topbar Start -->
        <!-- Topbar Start -->
        <div class="container-fluid bg-light">
            <div class="row py-2 px-xl-5">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark" href="#">FAQs</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="#">Help</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="#">Support</a>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark px-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="text-dark px-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="text-dark px-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="text-dark px-2" href="#"><i class="fab fa-instagram"></i></a>
                        <a class="text-dark pl-2" href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <header>
            <h1 class="logo"><a href="Admin/admin_login.jsp">MilkNest</a></h1>

            <ul class="navbar">
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="Home.jsp">Shop</a></li>
                <li><a href="aboutus.jsp">About us!</a></li>
                <li><a href="contact.jsp">Contact</a></li>
               
                    <%
                        if (session.getAttribute("username") == null) {
                    %>
                <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">LogIn/Register</a>
                </li>
                <%
                    }
                %>

            </ul>

            <%
                if (session.getAttribute("username") != null) {
            %>
            <!-- Cart Icon -->
            <div class="col-lg-3 col-6 text-right">
                <a href="Add to cart.jsp" class="text-reset">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="badge badge-success"><%= totalCartProducts%></span>
                </a>
            </div>
               
            <%
                }
            %>

            <!-- User Dropdown -->
            <div class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-user mr-2"></i>
                    <%
                        String str = (String) session.getAttribute("username");
                        if (str != null) {
                            out.print(str.toString());
                        } else {
                            out.print("Guest");
                        }
                    %>
                </a>
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">My Account</a></li>
                    <li><a class="dropdown-item" href="#">Settings</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li>
                        <form><button type="submit" class="btnLogout" name="btnLogout">Logout</button></form>
                    </li>
                </ul>
                <%
                    }
                %>
            </div>
        </ul>
    </header>
    <!--         link to custom js -->
    <script src="main.js"></script>
</body>
<style>
    /* google fonts */

    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        scroll-padding-top: 2rem;
        text-decoration: none;
        list-style: none;
        scroll-behavior: smooth;
        font-family: "Poppins",sans-serif;
    }

    .root{
        --main-color:#008148;
        --second-color:#1e3932;
    }
    section{
        padding: 50px 10%;
    }
    *::selection{
        color: #fff;
        background-color:cornflowerblue;
    }
    img{
        width: 100%;
    }
    .logo{
        /* width:100px; */
        display: flex;
        align-items: center;
    }
    header {
        position: relative; /* Allows the header to scroll with the page */
        width: 100%;
        z-index: 1000;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 15px 10%;
        transition: 0.2s;
        background: #fff; /* Optional: Add a background color for visibility */
        box-shadow: 0 4px 41px rgba(14, 55, 54, 0.14); /* Optional: Add a shadow for aesthetics */
    }
    .navbar{
        display: flex;
    }
    .navbar a{
        font-size: 1rem;
        padding: 11px 20px;
        color: var(--second-color);
        font-weight: 600;
        text-transform: uppercase;
    }

    .navbar a:hover {
        color:var(--main-color)
    }

</style>   

</html>


