<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

    <!-- Page Preloder -->


   

    <!-- Header Section Begin -->
    
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="main"><img src="img/IMG_0608 (1).jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li id="home"><a href="main">Home</a></li>
                            <li id="shop"><a href="shop">Shop</a></li>
                            <li id="notice"><a href="notice_list">Notice</a></li>
                            <li id="qna"><a href="qna">Qna</a></li>
                        </ul>
                    </nav>
                </div>
                <c:if test="${empty sUserId}">
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="login_form" class=""><img src="img/icon/login.png" style="width: 30px; height: 30px;"></a>
                    </div>
                </div>
                </c:if>
                <c:if test="${!empty sUserId}">
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="logout_action" class=""><img src="img/icon/logout.png" style="width: 30px; height: 30px;"></a>
                        <a href="mypage"><img src="img/mypage_img.png" style="width: 30px; height: 30px;" alt=""></a>
                    </div>
                </div>
                </c:if>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

  