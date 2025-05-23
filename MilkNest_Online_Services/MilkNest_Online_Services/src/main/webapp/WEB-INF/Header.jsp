<%-- 
    Document   : header1
    Created on : 29 Dec 2024, 10:30:45 am
    Author     : Santosh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.milknest.milknest_online_services.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.milknest.milknest_online_services.insertCart"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.cj.Session"%>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Include Bootstrap JS (With Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<%
    if (request.getParameter("btnLogout") != null) {
        session.removeAttribute("username");
        response.sendRedirect("Login.jsp");
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

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gppgleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>


<%!
    ResultSet rs;
    String category_img;
    category cat = new category();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MilkNest Online Services</title>

        <!--   Style Link   --> 
        <link rel="stylesheet" href="style.css">
        <!-- box icons -->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">


    </head>
    <body>
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
    </a>

    <header>
        <h1 class="logo"><a href="Admin/admin_login.jsp">MilkNest</a></h1>
        <!-- <div class ="bx bx-menu" id="menu icon"></div> -->
        <ul class="navbar">
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="Shop.jsp">Shop</a></li>
            <li><a href="aboutus.jsp">About us!</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <!--                <li><a href="Review.jsp">Review</a></li>-->
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
            <a href="frmCart.jsp" class="text-reset">
                <i class="fas fa-shopping-cart"></i>
                <span class="badge badge-success"><%= totalCartProducts%></span>
            </a>
        </div>
        <%
            }
        %>
        <!-- User Dropdown -->
        <!-- Include Bootstrap CSS -->

        <%
            String str = (String) session.getAttribute("username");
            if (str != null) {
        %>
        <!-- Show dropdown when user is logged in -->
        <div class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-user mr-2"></i> <%= str%>
            </a>

            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="MyAccount.jsp">My Account</a></li>
                <li><a class="dropdown-item" href="Settings.jsp">Settings</a></li>
                <li><hr class="dropdown-divider"></li>
                <li>
                    <form method="POST" action="Home.jsp">
                        <button type="submit" name ="btnLogout"class="dropdown-item">Logout</button>
                    </form>
                </li>
            </ul>
        </div>

        <%
        } else {
        %>
        <!-- Show only "Guest" when user is NOT logged in -->
        <div class="nav-item">
            <span class="nav-link"><i class="fa fa-user mr-2"></i> Guest</span>
        </div>

        <%
            }
        %>

    </header>

    <!--Home-->
    <section class="home" id="about">
        <div class="home-text" >
            <span>Welcome To</span>
            <h1>MilkNest</h1>
            <h2>Delivering Freshness, Every Day!</h2>

           <form id="search-box" method="GET" action="SerachBar.jsp">
    <input class="form-control" id="search-input" type="text" name="query" placeholder="Search for Products..." aria-label="Search" style="width:330px;">
    <button class="btn btn-success mt-2" type="submit">Search</button>
</form>

<!--            <form class="form-inline justify-content-md-start" id="search-box" method="GET" action="Search.jsp">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-search"></i></span>
                    <input class="form-control mr-sm-2" id="search-input" type="search" name="query" placeholder="Search for Products here..." aria-label="Search">
                    <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
                </div>
            </form>-->

            <div class="home-img">
                <img src="https://im.whatshot.in/img/2020/Apr/default-milk-dairy-12-1586346280.jpg" alt="">
            </div>
    </section>

    <!-- Features Start -->
    <div class="container-fluid pt-0 m-8">
        <div class="row px-xl-5 pb-3 m-5">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border w-100 mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">1-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->

    <!-- *****************  Categoreis **************-->
    <section class="shop" id="shop">
        <div class="heading">
            <h3>Shop now</h3>
            <h1>Milk and Milkproducts</h1>
        </div>
        <div class="shop-container">
            <div class="box">
                <div class="box-img">
                    <!--                        <img src="" alt="">-->
                </div>
            </div>
        </div>
        <section class="container mb-5">
            <div class="categories d-flex flex-wrap justify-content-center">

                <%
                    rs = cat.getAllCategories();

                    do {
                        String category_name = rs.getString("category_name");
                        category_img = rs.getString("category_img");
                %>
                <a href="ShopByCategories.jsp?catid=<%=rs.getInt(1)%>" class="shop-by-category-link">
                    <div class="shop-by-category-item">
                        <div class="shop-by-category-section-container">
                            <img src="<%=category_img%>" alt="Category">
                        </div>
                        <div class="shop-by-category-section-container">
                            <span class="shop-by-category-header"><%=category_name%></span>
                        </div>
                    </div>
                </a>
                <% } while (rs.next());%>
            </div>

        </section>

    </section>
    <!-- *****************  Categoreis **************-->




    <!-- link to custom js -->
    <script src="main.js"></script>


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

        :root{
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
            /*        width: 100%;*/
        }
        .logo{
            width:100px;
            display: flex;
            align-items: center;
        }
        header{
            position: relative; /* Allows the header to scroll with the page */
            width: 100%;
            top: 0;
            right: 0;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #fff;
            box-shadow: 0 4px 41px rgb(14 55 54/14%);
            padding: 15px 10%;
            transition: 0.2s;
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

        a {
            color: var(--second-color);
            text-decoration: none;
            background-color: transparent;
        }

        a:hover{
            color:var(--main-color);
        }
        .home{
            width: 100%;
            min-height: 100vh;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            background: #b6dde7;
            gap: 1rem;
            /*                margin-top: 100px;*/
        }
        .home-text{
            flex: 1 1 17rem;
            margin-top: 100px;
        }
        .home-img{
            flex: 1 1 17rem;
            margin-left: 600px;
            margin-top: -300px;

        }
        .home-img img{
            animation: animate 3s linear infinite;
            border-radius: 30px;
            width: 600px;
            height: 350px;
        }
        @keyframes animate{
            0%{
                transform: translate(-11px,0);
            }
            50%{
                transform: translate(0px,-11px);
            }
            100%{
                transform: translate(-11px,0);
            }
        }
        .home-text span{
            font-size: 1rem;
            text-transform: uppercase;
            font-weight: 600;
            color: var(--second-color);
        }
        .home-text h1{
            font-size: 3rem;
            font-weight: bolder;
            color: var(--main-color);
        }
        .home-text h2{
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--second-color);
            text-transform: capitalize;
            margin:0.5rem 0 1.4rem;
        }

        .btn{
            padding: 7px 16px;
            border: 2px solid var(--second-color);
            border-radius: 40px;
            color: var(--second-color);
            font-weight: 500;

        }
        .heading{
            text-align: center;
            text-transform: uppercase;
        }
        .heading-span{
            font-size: 1rem;
            font-weight: 600;
            color: var(--second-color);
        }
        .heading-h1{
            font-size: 2rem;
            color: var(--main-color);
        }
        .categories {
            display: flex;
            flex-wrap: wrap; /* Allow items to wrap on smaller screens */
            justify-content: center; /* Center items horizontally */
            gap: 15px; /* Add spacing between items */
        }

        .shop-by-category-link {
            text-decoration: none; /* Remove underline from links */
            flex: 1 1 calc(25% - 30px); /* Responsive width: 4 items per row */
            max-width: 600px; /* Optional: Limit the max width */
            min-width: 200px; /* Optional: Set a minimum width */
            display: flex;
            justify-content: center;
        }

        .shop-by-category-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 15px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            width: 100%; /* Ensure it fits within the parent anchor */
        }

        .shop-by-category-item img {
            width: 100%;
            max-width: 150px; /* Optional: Limit image size */
            height: auto; /* Maintain aspect ratio */
            object-fit: cover; /* Ensure the image looks good */
        }

        .shop-by-category-header {
            font-size: 16px;
            color: #333;
            text-align: center;
            margin-top: 10px;
        }
        .container-fluid .text-primary {
            color: black !important;
        }
        .review-card {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .review-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }
        .review-text {
            font-size: 1.1rem;
        }
        .review-container {
            max-width: 800px;
            margin: auto;
        }
    </style>
</html>
</body>


