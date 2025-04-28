<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <jsp:include page="menu.jsp"></jsp:include>
            <!-- Breadcrumb Start -->
            <div class="breadcrumb-wrap">
                <div class="container-fluid">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Products</a></li>
                        <li class="breadcrumb-item active">Cart</li>
                    </ul>
                    <h3>${requestScope.thongbao}</h3>
                </div>
                
            </div>
            <!-- Breadcrumb End -->

            <!-- Cart Start -->
            <div class="cart-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="cart-page-inner">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Product</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Total</th>
                                                <th>Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody class="align-middle">
                                        <c:forEach items="${listorder}" var='o'>
                                            <tr>
                                                <td>
                                                    <div class="img">
                                                        <a><img src="img/${o.image}" alt="Image"></a>
                                                        <p>${o.name}</p>
                                                    </div>
                                                </td>
                                                <td>$${o.price}</td>
                                                <td>
                                                    <a name="qty" >${o.quanity}</a>
                                                </td>
                                                <td>$${o.price * o.quanity}</td>
                                                <td><a class="fa fa-trash" href="deletecartitem?pid=${o.idProduct}"></a></td>
                                            </tr>
                                        </c:forEach>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart-page-inner">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="coupon">
                                        <input type="text" placeholder="Hạn mã hết ngày 8/3/2024">
                                        <button>Sử dụng</button>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="cart-summary">
                                        <div class="cart-content">
                                            <h1>Đơn giá </h1>
                                            <p>Số tiền hàng<span>$${totalcart}</span></p>
                                            <p>Tiền vận chuyển<span>$1</span></p>
                                            <h2>Tổng tiền<span>$${totalcart + 1}</span></h2>
                                    </div></br>
                                        <div class="cart-btn" style="padding-left: 140px">
                                            <a class="btn"  href="deletec?pdid=${o.idProduct}">Đặt Hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->

        <!-- Footer Start -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Liên lạc</h2>
                            <div class="contact-info">
                                <p><i class="fa fa-map-marker"></i>Yên Lộc, Ý Yên, Nam Định</p>
                                <p><i class="fa fa-envelope"></i>dohuyson134@gmail.com</p>
                                <p><i class="fa fa-phone"></i>0837848683</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Theo dõi</h2>
                            <div class="contact-info">
                                <div class="social">
                                    <a href="https://twitter.com/Sn6597333187600"><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/sondo0603"><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/son_dhuy?igsh=YTQwZjQ0NmI0OA=="><i class="fab fa-instagram"></i></a>
                                    <a href="https://www.youtube.com/channel/UCBMGkYPuwVQqvscooUzfd5g"><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Công ty</h2>
                            <ul>
                                <li><a href="https://daihoc.fpt.edu.vn/">About Us</a></li>
                                <li><a href="https://www.youtube.com/@fug-giangviencfphanangcau6310">Chính sách bảo mật</a></li>
                                <li><a href="https://www.youtube.com/watch?v=CTZ0iiRd8DQ">Điều khoản & Điều kiện</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Thông tin mua hàng</h2>
                            <ul>
                                <li><a href="#">Chính sách thanh toán</a></li>
                                <li><a href="#">Chính sách vận chuyển</a></li>
                                <li><a href="#">Chính sách hoàn trả</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row payment align-items-center">
                    <div class="col-md-6">
                        <div class="payment-method">
                            <h2>We Accept:</h2>
                            <img src="img/payment-method.png" alt="Payment Method" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="payment-security">
                            <h2>Secured By:</h2>
                            <img src="img/godaddy.svg" alt="Payment Security" />
                            <img src="img/norton.svg" alt="Payment Security" />
                            <img src="img/ssl.svg" alt="Payment Security" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Footer Bottom Start -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 copyright">
                        <p>Copyright &copy; <a href="#">Your Site Name</a>. All Rights Reserved</p>
                    </div>

                    <div class="col-md-6 template-by">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->					
                        <p>Designed By <a href="https://www.facebook.com/sondo0603">Do Huy Son</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->       

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
