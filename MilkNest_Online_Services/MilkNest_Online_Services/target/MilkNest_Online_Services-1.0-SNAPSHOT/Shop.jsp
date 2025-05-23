<%-- 
    Document   : Shop
    Created on : 02-Jan-2025, 5:42:08 pm
    Author     : VICTUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.Session"%>
<%@page import="com.milknest.milknest_online_services.category" %>

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<%!
    ResultSet rs;
    category ic = new category();
    String CatName, CatImg;
%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <style>
            /*            Categories*/
            .common-widget {
                padding: 10px 3.125rem 0px 3.125rem !important;
            }
            .shop-by-category-container {
                margin-top: 20px;
                display: flex;
                gap: 20px;
                flex-wrap: wrap;
            }
            .shop-by-category-container {
                justify-content: center;
            }
            .shop-by-category-item {
                display: flex;
                flex-direction: column;
                justify-content: center;
                text-align: center;
                align-items: center;
                width: 150px;
                height: 160px;
                border-radius: 5px;
                box-shadow: 0 0 3px 0 rgba(0, 0, 0, 0.4);
                background-color: #fff;
                padding-top: 10px;
            }
            .shop-by-category-item img{
                overflow-clip-margin: content-box;
                height: 100px;
                width: 140px;
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



        </style>
    </head>
    <body>
        <%@include file="WEB-INF/Navbar.jsp" %>
        <section class="container mb-5">
            <div id="header-carousel" class="carousel slide" data-ride="carousel" data-interval="1000">
                <div class="carousel-inner">
                    <div class="carousel-item active" style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/Milk+Shake+600+x+300_1693920471.jpeg?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item" style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/IMG_8103-+Category+banner_1730995808.jpeg?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item " style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/NCR1+Push_1729774591.png?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item " style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/Harvest+Rusk+%281%29_1727760237.jpeg?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item " style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/Dairy+14_1723628214.png?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item " style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/Frame+38700_1730430146.png?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item " style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/600x300_1709297272.jpeg?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item " style="height: 600px;">
                        <img class="img-fluid" src="https://file.milkbasket.com/banners/Sofit+Banner+Fit+IS+FAB+600+x+300+Pixel_1680679462.jpeg?w=1400&dpr=1.3" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Delivering Freshness, Every Day!</h3>
                                <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                    <div class="btn btn-dark" style="width: 45px; height: 45px;">
                        <span class="carousel-control-prev-icon mb-n2"></span>
                    </div>
                </a>
                <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                    <div class="btn btn-dark" style="width: 45px; height: 45px;">
                        <span class="carousel-control-next-icon mb-n2"></span>
                    </div>
                </a>
            </div>
        </section>

        <!-- *****************  Categoreis **************-->
        <section class="shop" id="shop">
            <div class="heading">
                <h2>ORDER NOW </h2  >
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

                    <%                        rs = ic.getAllCategories();

                        do {
                            CatName = rs.getString("category_name");
                            CatImg = rs.getString("category_img");
                    %>
                    <a href="ShopByCategories.jsp?catid=<%=rs.getInt(1)%>" class="shop-by-category-link">
                        <div class="shop-by-category-item">
                            <div class="shop-by-category-section-container">
                                <img src="<%=CatImg%>" alt="Category">
                            </div>
                            <div class="shop-by-category-section-container">
                                <span class="shop-by-category-header"><%=CatName%></span>
                            </div>
                        </div>
                    </a>
                    <% } while (rs.next());%>
                </div>

            </section>

    </body>
</html>     

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>


<%@include file="WEB-INF/Footer.jsp" %>