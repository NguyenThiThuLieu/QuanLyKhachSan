<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOTEL QUY NHƠN</title>
    <link rel="stylesheet" href="<%request.getContextPath(); %>/SpringMVC/resources/css/Home.css">
    <script src="../js/Home.js"></script>
</head>
<body>
	<div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <i class="fa-solid fa-circle-exclamation"></i>
                        <span class="icon"><ion-icon name="logo-github"></ion-icon></span>
                        <span class="titlee">ATHENA HOTEL</span>
                    </a>
                </li>
                <li>
                    <a href="Home.jsp" class="title2 active">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">TRANG CHÍNH</span>
                    </a>
                </li>
                <li>
                    <a href="Room.jsp" class="title2">
                        <span class="icon"><ion-icon name="repeat-outline"></ion-icon></ion-icon></span>
                        <span class="title">THUÊ - TRẢ PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="Order.jsp" class="title2">
                        <span class="icon"><ion-icon name="calendar-number-outline"></ion-icon></span>
                        <span class="title">ĐẶT PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="Customer.jsp" class="title2">
                        <span class="icon"><ion-icon name="man-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ KHÁCH HÀNG</span>
                    </a>
                </li>
                <li>
                    <a href="RoomManage.jsp" class="title2">
                        <span class="icon"><ion-icon name="bed-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="System.jsp" class="title2">
                        <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ HỆ THỐNG</span>
                    </a>
                </li>
                <li>
                    <a href="Account.jsp" class="title2">
                        <span class="icon"><ion-icon name="person-circle-outline"></ion-icon></ion-icon></span>
                        <span class="title">TÀI KHOẢN</span>
                    </a>
                </li>
                <li>
                    <a href="login.jsp">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">ĐĂNG XUẤT</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>