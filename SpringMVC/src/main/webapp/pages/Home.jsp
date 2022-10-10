<<<<<<< HEAD
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
    <script src="https://code.highcharts.com/highcharts.src.js"></script>
</head>
<body><jsp:include page=""></jsp:include>
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
                    <a href="pages/Home.jsp" class="title2 active">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">TRANG CHÍNH</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Room.jsp" class="title2">
                        <span class="icon"><ion-icon name="repeat-outline"></ion-icon></ion-icon></span>
                        <span class="title">THUÊ - TRẢ PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Order.jsp" class="title2">
                        <span class="icon"><ion-icon name="calendar-number-outline"></ion-icon></span>
                        <span class="title">ĐẶT PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Customer.jsp" class="title2">
                        <span class="icon"><ion-icon name="man-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ KHÁCH HÀNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Collect.jsp" class="title2">
                        <span class="icon"><ion-icon name="book-outline"></ion-icon></ion-icon></span>
                        <span class="title">QUẢN LÍ THU CHI</span>
                    </a>
                </li>
                <li>
                    <a href="pages/System.jsp" class="title2">
                        <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ HỆ THỐNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Account.jsp" class="title2">
                        <span class="icon"><ion-icon name="person-circle-outline"></ion-icon></ion-icon></span>
                        <span class="title">TÀI KHOẢN</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Login.jsp">
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
                <h3>THÔNG TIN HỆ THỐNG</h3>
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
            <div class="tab-pane active">
                <div class="cardBox">
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="eye-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Thuê trong ngày</div>
                            <div class="cardName">${numOfRentedInDay } lượt</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="cart-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Phòng chờ</div>
                            <div class="cardName">${numOfEmtyRoom } phòng</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="chatbubbles-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Phòng đang thuê</div>
                            <div class="cardName">${numOfRentedRoom } phòng</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="cash-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Phòng cần dọn</div>
                            <div class="cardName">${numOfRoomNeedClean } phòng</div>
                        </div> 
                    </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div id="container" style="height: 400px; width: 950px"></div>
                        <script src="<%=request.getContextPath() %>/resources/js/Home.js"></script>
                    </div>
                    <div class="recentCustomers">
                        <div class="cardHeader">
                            <h2>Nhật ký hệ thống</h2>
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

        const $ = document.querySelector.bind(document)
        const $$ = document.querySelectorAll.bind(document)
        const title = $$('.title2')
        const panes = $$('.tab-pane')
        title.forEach((tab, index)=>{
            const pane = panes[index]
            tab.onclick = function(){
                $('.title2.active').classList.remove('active')
                $('.tab-pane.active').classList.remove('active')
                this.classList.add('active')
                pane.classList.add('active')

            }
        })
    </script>
</body>
</html>
=======
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
    <script src="https://code.highcharts.com/highcharts.src.js"></script>
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
                    <a href="pages/Home.jsp" class="title2 active">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">TRANG CHÍNH</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Room.jsp" class="title2">
                        <span class="icon"><ion-icon name="repeat-outline"></ion-icon></ion-icon></span>
                        <span class="title">THUÊ - TRẢ PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Order.jsp" class="title2">
                        <span class="icon"><ion-icon name="calendar-number-outline"></ion-icon></span>
                        <span class="title">ĐẶT PHÒNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Customer.jsp" class="title2">
                        <span class="icon"><ion-icon name="man-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ KHÁCH HÀNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/RoomManage.jsp" class="title2">
                        <span class="icon"><ion-icon name="bed-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ THU CHI</span>
                    </a>
                </li>
                <li>
                    <a href="pages/System.jsp" class="title2">
                        <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                        <span class="title">QUẢN LÍ HỆ THỐNG</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Account.jsp" class="title2">
                        <span class="icon"><ion-icon name="person-circle-outline"></ion-icon></ion-icon></span>
                        <span class="title">TÀI KHOẢN</span>
                    </a>
                </li>
                <li>
                    <a href="pages/Login.jsp">
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
                <h3>THÔNG TIN HỆ THỐNG</h3>
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
            <div class="tab-pane active">
                <div class="cardBox">
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="eye-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Thuê trong ngày</div>
                            <div class="cardName">${numOfRentedInDay } lượt</div>
                        </div>
                        
                    </div>
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="cart-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Phòng chờ</div>
                            <div class="cardName">${numOfEmtyRoom } phòng</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="chatbubbles-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Phòng đang thuê</div>
                            <div class="cardName">${numOfRentedRoom } phòng</div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="iconBx">
                            <ion-icon name="cash-outline"></ion-icon>
                        </div>
                        <div>
                            <div class="numbers">Phòng cần dọn</div>
                            <div class="cardName">${numOfRoomNeedClean } phòng</div>
                        </div> 
                    </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div id="container" style="height: 100%; width: 100%"></div>
                        <script src="<%=request.getContextPath() %>/resources/js/Home.js"></script>
                    </div>
                    <div class="recentCustomers">
                        <div class="cardHeader">
                            <h2>Nhật ký hệ thống</h2>
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

        const $ = document.querySelector.bind(document)
        const $$ = document.querySelectorAll.bind(document)
        const title = $$('.title2')
        const panes = $$('.tab-pane')
        title.forEach((tab, index)=>{
            const pane = panes[index]
            tab.onclick = function(){
                $('.title2.active').classList.remove('active')
                $('.tab-pane.active').classList.remove('active')
                this.classList.add('active')
                pane.classList.add('active')

            }
        })
    </script>
</body>
</html>
>>>>>>> branch 'master' of https://github.com/NguyenThiThuLieu/QuanLyKhachSan.git
