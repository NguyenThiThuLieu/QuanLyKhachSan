<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOTEL QUY NHƠN</title>
    <link rel="stylesheet" href="<%request.getContextPath(); %>/SpringMVC/resources/css/Home.css">
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
                    <a href="Collect.jsp" class="title2">
                        <span class="icon"><ion-icon name="book-outline"></ion-icon></ion-icon></span>
                        <span class="title">QUẢN LÍ THU CHI</span>
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

    <div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>QUẢN LÍ KHÁCH HÀNG</h3>
            </div>
            <!-- <div class="search">
                <label>
                    <input type="text" placeholder="Search here">
                    <ion-icon name="search-outline"></ion-icon>
                </label>
            </div> -->
            <div class="user">
                <img src="anhbac.jpg">
            </div>
        </div>
        <div class="topfour">
            <div class="search">
                <button id="btn2">Thêm mới</button>
            </div>
            <div class="details">
                <div class="recentOrder">
                    <div class="cardHeader">
                        <h2>Bảng khách hàng</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Mã khách hàng</td>
                                <td>Tên khách hàng</td>
                                <td>Số điện thoại</td>
                                <td>CMND</td>
                                <td>Quê Quán</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>001</td>
                                <td>Thái Bá Tường</td>
                                <td>09xxxxxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                            </tr>
                            <tr>
                                <td>002</td>
                                <td>Nguyễn Thị Thu Liễu</td>
                                <td>03xxxxxxx</td>
                                <td>xxxx</td>
                                <td><span class="status pending">Quy Nhơn</span></td>
                            </tr>
                            <tr>
                                <td>003</td>
                                <td>Mai Anh Bắc</td>
                                <td>012xxxxxx</td>
                                <td>xxxx</td>
                                <td><span class="status return">Gia Lai</span></td>
                            </tr>
                            <tr>
                                <td>004</td>
                                <td>Trần Ngọc tiền</td>
                                <td>08xxxxxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="recentCustomerss" id="recentCustomerss">
                    <div class="cardHeader">
                        <h2>Thêm mới</h2>
                        <button class="snip1457">Lưu</button>
                    </div>
                    <div class="page">
                        <div class="field field_v1">
                          <label for="first-name" class="ha-screen-reader">Họ và tên khách hàng</label>
                          <input id="first-name" class="field__input" placeholder="vd: Thái Bá Tường">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">Họ và tên khách hàng</span>
                          </span>
                        </div>
                        <div class="field field_v2">
                          <label for="last-name" class="ha-screen-reader">Số điện thoại</label>
                          <input id="last-name"  class="field__input" placeholder="034xxxxxxx">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">Số điện thoại</span>
                          </span>
                        </div>
                        <div class="field field_v2">
                            <label for="last-name" class="ha-screen-reader">CMND/CCCD</label>
                            <input id="last-name"  class="field__input" placeholder="xxxxxxxxxxxx">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">CMND/CCCD</span>
                            </span>
                          </div>    
                        <div class="field field_v3">
                          <label for="email" class="ha-screen-reader">E-mail</label>
                          <input id="email" class="field__input" placeholder="info@gmail.com">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">E-mail</span>
                          </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <script>
        //Menu
        let toggle = document.querySelector('.toggle');
        let navigation = document.querySelector('.navigation');
        let main = document.querySelector('.main');

        toggle.onclick = function(){
            navigation.classList.toggle('active')
            main.classList.toggle('active')
        }
        //onclick thêm mới
        document.getElementById("btn2").onclick = function () {
                document.getElementById("recentCustomerss").style.display = 'block';
            };
        // const $ = document.querySelector.bind(document)
        // const $$ = document.querySelectorAll.bind(document)
        // const title = $$('.title2')
        // const panes = $$('.tab-pane')
        // title.forEach((tab, index)=>{
        //     const pane = panes[index]
        //     tab.onclick = function(){
        //         $('.title2.active').classList.remove('active')
        //         $('.tab-pane.active').classList.remove('active')
        //         this.classList.add('active')
        //         pane.classList.add('active')

        //     }
        // })
    </script>
</body>
</html>