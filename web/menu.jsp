<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <c:if test="${sessionScope.acc != null}">
                        <a href="cartcustomer" class="nav-item nav-link">Giỏ hàng</a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a href="my-account.jsp" class="nav-item nav-link">Hello ${sessionScope.customer.firstname} ${sessionScope.customer.lastname}</a>
                    </c:if>
                </div>
                <div class="navbar-nav ml-auto">
                    <c:if test="${sessionScope.acc == null}">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Tài khoản</a>
                            <div class="dropdown-menu">
                                <a href="login.jsp" class="dropdown-item">Đăng nhập</a>
                                <a href="register.jsp" class="dropdown-item">Đăng ký</a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <a class="nav-item nav-link" href="logout">Đăng xuất</a>
                    </c:if>
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
                    <a href="http://localhost:8080/project/home">
                        <img src="img/logo.png" alt="Logo">
                    </a>
                </div>
            </div>

            <div class="col-md-6">
                <form action="search" method="POST"> 
                    <div class="search">
                        <input value="${txtS}" name="search" type="text" placeholder="Tìm kiếm">
                        <button type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </form> 
            </div>

            <div class="col-md-3">
                <div class="user">
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

