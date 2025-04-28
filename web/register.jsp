<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Sơn Store</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Top bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <i class="fa fa-envelope"></i>
                        sondhhe170206@fpt.edu.vn
                    </div>
                    <div class="col-sm-6">
                        <i class="fa fa-phone-alt"></i>
                        0867085558
                    </div>
                </div>
            </div>
        </div>
        <!-- Top bar End -->

        <!-- Nav Bar Start -->
        <div class="nav">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto">
                            <a href="http://localhost:8080/project/home" class="nav-item nav-link active">Sản phẩm</a>
                            <!--<a href="product-list.jsp" class="nav-item nav-link">Sản phẩm</a>-->
                            <a href="http://localhost:8080/project/detail?pid=1" class="nav-item nav-link">Chi tiết</a>
                        </div>
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Tài khoản</a>
                                <div class="dropdown-menu">
                                    <a href="login.jsp" class="dropdown-item">Đăng nhập</a>
                                    <a href="register.jsp" class="dropdown-item">Đăng ký</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Nav Bar End -->      

        <!-- Bottom Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="index.jsp">
                                <img src="img/logo.png" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="search">
                            <input type="text" placeholder="Search">
                            <button><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                            <!--                            <a href="wishlist.html" class="btn wishlist">
                                                            <i class="fa fa-heart"></i>
                                                            <span>(0)</span>
                                                        </a>-->
                            <a href="cart.jsp" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span>(0)</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar End --> 

        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Nhà</a></li>
                    <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                    <li class="breadcrumb-item active">Đăng ký</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Login Start -->
        <div class="login">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">    
                        <div class="register-form">
                            <form action="register" method="POST">
                                <div class="row">
                                    <h3 class="text-danger" >${mess}</h3>
                                    <div class="col-md-6">
                                        <label>Họ</label>
                                        <input class="form-control" type="text" name="first" placeholder="Họ">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Tên</label>
                                        <input class="form-control" type="text" name="last" placeholder="Tên">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Địa chỉ</label>
                                        <input class="form-control" type="text" name="address" placeholder="Địa chỉ">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Số điện thoại</label>
                                        <input class="form-control" type="text" name="phone" placeholder="Số điện thoại">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Mật khẩu</label>
                                        <input class="form-control" type="password" name="pass" placeholder="Mật khẩu">
                                    </div>                                   
                                    <div class="col-md-6">
                                        <label>Nhập lại mật khẩu</label>
                                        <input class="form-control" type="password" name="repass" placeholder="Nhập lại mật khẩu">
                                    </div>
                                    <div class="col-md-12">
                                        <p> <button class="btn">Đăng ký</button></p>                                    
                                    </div>
                                </div>
                            </form>
                            <div class="row">
                                <div class="col-md-12">                                   
                                    <a href="login.jsp" class="btn"" >Chuyển sang Đăng nhập</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login End -->
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
