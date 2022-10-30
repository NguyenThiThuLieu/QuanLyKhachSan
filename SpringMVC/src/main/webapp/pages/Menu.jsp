<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOTEL QUY NHƠN</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Home.css">
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
                        <span class="icon"><ion-icon name="repeat-outline"></ion-icon></span>
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
                        <span class="icon"><ion-icon name="accessibility-outline"></ion-icon></span>
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
                        <span class="icon"><ion-icon name="person-circle-outline"></ion-icon></span>
                        <span class="title">TÀI KHOẢN</span>
                    </a>
                </li>
                <li>
                    <a href="Login.jsp">
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
                <h3>MENU</h3>
            </div>
            <div class="user">
                <img src="anhbac.jpg">
            </div>
        </div>
        <div class="topfour">
            <div class="tab-pane active">
                <div class="cardBox">
                    <div class="close">
                        <a href="System.jsp" style="font-size: 30px;">
                            <ion-icon name="arrow-back-outline"></ion-icon>
                        </a>
                    </div>
                    <!-- <div class="search">
                        <label>
                            <input type="text" placeholder="Search here">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div> -->
                    <div class="searchh">
                        <button id="btn2" class="info-view-info">Thêm mới</button>
                    </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div class="cardHeader">
                            <h2>DANH SÁCH DỊCH VỤ</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                	<td>Mã dịch vụ</td>
                                    <td>Tên dịch vụ</td>
                                    <td>Đơn giá</td>
                                    <td>Chỉnh sửa</td>
                                    <td>Xóa </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>DV01</td>
                                    <td>Cafe</td>
                                    <td><span class="status delivered">15000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                                <tr>
                                    <td>DV02</td>
                                    <td>Nước chanh</td>
                                    <td><span class="status pending">15000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                                <tr>
                                    <td>DV03</td>
                                    <td>Nước khoáng</td>
                                    <td><span class="status return">15000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                                <tr>
                                    <td>DV04</td>
                                    <td>Bò né</td>
                                    <td><span class="status return">30000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
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
                              <label for="first-name" class="ha-screen-reader">Mã dịch vụ</label>
                              <input id="first-name" class="field__input" placeholder="vd: DV01..">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Mã dịch vụ</span>
                              </span>
                            </div>
                            <div class="field field_v2">
                              <label for="last-name" class="ha-screen-reader">Tên dịch vụ</label>
                              <input id="last-name"  class="field__input" placeholder="Nước cam,...">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Tên dịch vụ</span>
                              </span>
                            </div>    
                            <div class="field field_v3">
                              <label for="email" class="ha-screen-reader">Đơn giá</label>
                              <input id="email" class="field__input" placeholder="15000 đ/món vv..">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Đơn giá</span>
                              </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="edit-modal js-modal">
        <div class="modal-container">
            <div class="modal-close js-modal-close"><ion-icon name="close-outline"></ion-icon></div>
            <header class="modal-header">CHỈNH SỬA</header>
            <div class="modal-body">
                <label for="name" class="modal-label">
                    <ion-icon name="text-outline" class="modal-icon"></ion-icon>
                    Tên dịch vụ
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Tên menu">
                <label for="status" class="modal-label">
                    <ion-icon name="checkmark-done-circle-outline" class="modal-icon"></ion-icon>
                    Đơn giá
                </label>
                <input id="status" type="text" class="modal-input" placeholder="Đơn giá">

                <button class="btn-edit">
                    Done
                </button>
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
    </script>
    <script>
        const editBtns = document.querySelectorAll('.js-edit')
        const modal = document.querySelector('.js-modal')
        const modalClose = document.querySelector('.js-modal-close')
        
        function showedit(){
            modal.classList.add('open')
        }

        function hideShowedit(){
            modal.classList.remove('open')
        }
        for(const editBtn of editBtns){
            editBtn.addEventListener('click', showedit)
        }
        modalClose.addEventListener('click', hideShowedit)

    </script>
</body>
</html>