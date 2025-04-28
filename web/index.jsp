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
                        <li class="breadcrumb-item active">Product List</li>
                    </ul>
                </div>
            </div>
            <!-- Breadcrumb End -->

            <!-- Product List Start -->
            <div class="product-view">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="product-view-top">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <form action="search" method="POST">
                                                    <div class="product-search">
                                                        <input value="${txtS}" name="search" type="text" placeholder="Tìm kiếm">
                                                        <button><i class="fa fa-search"></i></button>
                                                    </div>
                                                </form>
                                            </div>
                                        <div class="col-md-4">
                                            <form action="title" method="POST">
                                            <div class="product-short">
                                                <div class="dropdown">
                                                    <div class="dropdown-toggle" data-toggle="dropdown">Lọc theo thể loại</div>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <button class="dropdown-item" name="ab" value="Áo khoác">Áo khoác</button>
                                                        <button class="dropdown-item" name="ab" value="Áo sơ mi">Áo sơ mi</button>
                                                        <button class="dropdown-item" name="ab" value="Vest thời thượng">Vest thời thượng</button>
                                                        <button class="dropdown-item" name="ab" value="Áo cardigan">Áo cardigan</button>
                                                        <button class="dropdown-item" name="ab" value="Áo phao">Áo phao</button>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                        <div class="col-md-4">
                                            <form action="arrange" method="POST">
                                            <div class="product-price-range">
                                                <div class="dropdown">
                                                    <div class="dropdown-toggle" data-toggle="dropdown">Sắp xếp theo giá</div>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <button name="arr" value="1" class="dropdown-item">Tăng dần</button>
                                                        <button name="arr" value="2" class="dropdown-item">Giảm dần</button>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:forEach items="${listP}" var="o">
                                <div class="col-md-4">
                                    <div class="product-item">
                                        <div class="product-title">
                                            <a href="detail?pid=${o.productId}">${o.name}</a>
                                            <div class="ratting">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <div class="product-image">
                                            <a href="product-detail.html">
                                                <img src="img/${o.image}" alt="Product Image">
                                            </a>
                                            <div class="product-action">
                                                <a href="addcart?pid=${o.productId}"><i class="fa fa-cart-plus"></i></a>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                                <a href="detail?pid=${o.productId}"><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-price">
                                            <h3><span>$</span>${o.price}</h3>
                                            <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Thêm</a>
                                        </div>
                                    </div>
                                </div>                                   
                            </c:forEach>      
                        </div>

                        <!-- Pagination Start -->
                        <div class="col-md-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Pagination Start -->
                    </div>           

                    <!-- Side Bar Start -->
                    <div class="col-lg-4 sidebar">
                        <div class="sidebar-widget category">
                            <h2 class="title">Nhãn hàng</h2>
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

                        <div class="sidebar-widget widget-slider">
                            <div class="sidebar-slider normal-slider">                               
                                <div class="product-item">
                                    <h3 href="#">Sản phẩm mới nhất</h3>
                                    <div class="product-title">
                                        <a href="#">${lastP.name}</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.html">
                                            <img src="img/${lastP.image}" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>${lastP.price}</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Thêm</a>
                                    </div>
                                </div>                               
                            </div>
                        </div>

                        <div class="sidebar-widget brands">
                            <h2 class="title">Our Brands</h2>
                            <ul>
                                <li><a href="#">Nulla </a><span>(45)</span></li>
                                <li><a href="#">Curabitur </a><span>(34)</span></li>
                                <li><a href="#">Nunc </a><span>(67)</span></li>
                                <li><a href="#">Ullamcorper</a><span>(74)</span></li>
                                <li><a href="#">Fusce </a><span>(89)</span></li>
                            </ul>
                        </div>

                        <div class="sidebar-widget tag">
                            <h2 class="title">Tags Cloud</h2>
                            <a href="#">Lorem ipsum</a>
                            <a href="#">Vivamus</a>
                            <a href="#">Phasellus</a>
                            <a href="#">pulvinar</a>
                            <a href="#">Curabitur</a>
                            <a href="#">Fusce</a>
                            <a href="#">Sem quis</a>
                            <a href="#">Mollis metus</a>
                            <a href="#">Sit amet</a>
                            <a href="#">Vel posuere</a>
                            <a href="#">orci luctus</a>
                            <a href="#">Nam lorem</a>
                        </div>
                    </div>
                    <!-- Side Bar End -->
                </div>
            </div>
        </div>
        <!-- Product List End -->  

        <!-- Brand Start -->
        <div class="brand">
            <div class="container-fluid">
                <div class="brand-slider">
                    <div class="brand-item"><img src="img/b1.png" alt=""></div>
                    <div class="brand-item"><img src="img/b2.png" alt=""></div>
                    <div class="brand-item"><img src="img/b3.png" alt=""></div>
                    <div class="brand-item"><img src="img/b4.png" alt=""></div>
                    <div class="brand-item"><img src="img/b5.jpg" alt=""></div>
                    <div class="brand-item"><img src="img/b6.jpg" alt=""></div>
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
