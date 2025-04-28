<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Sơn Store</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <link href="img/favicon.ico" rel="icon">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <!-- Breadcrumb Start -->
            <div class="breadcrumb-wrap">
                <div class="container-fluid">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Products</a></li>
                        <li class="breadcrumb-item active">Product Detail</li>
                    </ul>
                </div>
            </div>
            <!-- Breadcrumb End -->

            <!-- Product Detail Start -->
            <div class="product-detail">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="product-detail-top">
                                <div class="row align-items-center">
                                    <div class="col-md-5">
                                        <div class="product-slider-single normal-slider">
                                            <img src="img/${detail.image}" alt="Product Image">
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="product-content">
                                        <div class="title"><h2>${detail.name}</h2></div>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="price">
                                            <h4>Price:</h4>
                                            <p>${detail.price} <span>$14000</span></p>
                                        </div>
                                        <div>
                                            <form action="addcartdetail" method="POST">
                                            <h5>Quantity:  <input type="text" size="1" style="text-align: center" name="qty"></h5></br>
                                            <div class="action">
                                                <input name="pid" value="${requestScope.detail.getProductId()}" style="display: none"> />
                                                <button type="submit" class="btn"><i class="fa fa-shopping-cart"></i>Add to Cart</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row product-detail-bottom">
                                <div class="col-lg-12">
                                    <ul class="nav nav-pills nav-justified">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="pill" href="#description">Description</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="pill" href="#reviews">Reviews (1)</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content">
                                        <div id="description" class="container tab-pane active">
                                            <h4>Product description</h4>
                                            <p>
                                                ${detail.description}
                                            </p>
                                        </div>
                                        <div id="specification" class="container tab-pane fade">
                                            <h4>Product specification</h4>
                                            <ul>
                                                <li>Lorem ipsum dolor sit amet</li>
                                                <li>Lorem ipsum dolor sit amet</li>
                                                <li>Lorem ipsum dolor sit amet</li>
                                                <li>Lorem ipsum dolor sit amet</li>
                                                <li>Lorem ipsum dolor sit amet</li>
                                            </ul>
                                        </div>
                                        <div id="reviews" class="container tab-pane fade">
                                            <div class="reviews-submitted">
                                                <div class="reviewer">Phasellus Gravida - <span>01 Jan 2020</span></div>
                                                <div class="ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <p>
                                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.
                                                </p>
                                            </div>
                                            <div class="reviews-submit">
                                                <h4>Give your Review:</h4>
                                                <div class="ratting">
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Side Bar Start -->
                        <div class="col-lg-4 sidebar">
                            <div class="sidebar-widget category">
                                <h2 class="title">Category</h2>
                                <nav class="navbar bg-light">
                                    <ul class="navbar-nav">
                                        <c:forEach items="${listC}" var="c"> 
                                            <li class="nav-item">
                                                <a class="nav-link" href="categories?categoryID=${c.categoryID}"><i class="fa fa-tshirt"></i>${c.name}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- Side Bar End -->
                    </div>
                </div>
            </div>
            <!-- Product Detail End -->

            <!-- Brand Start -->
            <div class="brand">
                <div class="container-fluid">
                    <div class="brand-slider">
                        <div class="brand-item"><img src="img/brand-1.png" alt=""></div>
                        <div class="brand-item"><img src="img/brand-2.png" alt=""></div>
                        <div class="brand-item"><img src="img/brand-3.png" alt=""></div>
                        <div class="brand-item"><img src="img/brand-4.png" alt=""></div>
                        <div class="brand-item"><img src="img/brand-5.png" alt=""></div>
                        <div class="brand-item"><img src="img/brand-6.png" alt=""></div>
                    </div>
                </div>
            </div>
            <!-- Brand End -->
            <jsp:include page="footer.jsp"></jsp:include>
            <!-- Back to Top -->
            <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/slick/slick.min.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
    </body>
</html>
