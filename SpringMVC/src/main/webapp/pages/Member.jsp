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
	<jsp:include page="MenuBar.jsp"/>
	<div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>QUẢN LÍ NHÂN VIÊN</h3>
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
                    <div class="">
                        <a href="../html/System.html" style="font-size: 30px;">
                            <ion-icon name="arrow-back-outline"></ion-icon>
                        </a>
                    </div>
                    <div class="searchh">
                        <label>
                            <input type="text" placeholder="Tìm kiếm nhân viên">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <div class="searchh">
                        <button id="btn2">Thêm mới</button>
                    </div>
                </div>
            <div class="details">
                <div class="recentOrder">
                    <div class="cardHeader">
                        <h2>Bảng nhân viên</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Mã nhân viên</td>
                                <td>Tên nhân viên</td>
                                <td>Số điện thoại</td>
                                <td>CMND/CCCD</td>
                                <td>Trạng thái</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>NV01</td>
                                <td>Thái Bá Tường</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                            </tr>
                            <tr>
                                <td>NV02</td>
                                <td>Nguyễn Thị Thu Liễu</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status pending">Quy Nhơn</span></td>
                            </tr>
                            <tr>
                                <td>NV03</td>
                                <td>Mai Anh Bắc</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status return">Gia Lai</span></td>
                            </tr>
                            <tr>
                                <td>NV04</td>
                                <td>Nguyễn Văn A</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status inprogress">Tuy Phước</span></td>
                            </tr>
                            <tr>
                                <td>NV05</td>
                                <td>Trần Ngọc tiền</td>
                                <td>xxxxx</td>
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
                            <label for="first-name" class="ha-screen-reader">Mã nhân viên</label>
                            <input id="first-name" class="field__input" placeholder="vd: Thái Bá Tường">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Mã nhân viên</span>
                            </span>
                          </div>
                        <div class="field field_v1">
                          <label for="first-name" class="ha-screen-reader">Họ và tên nhân viên</label>
                          <input id="first-name" class="field__input" placeholder="vd: Thái Bá Tường">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">Họ và tên nhân viên</span>
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
                            <label for="last-name" class="ha-screen-reader">Số điện thoại</label>
                            <input id="last-name"  class="field__input" placeholder="034xxxxxxx">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">CMND/CCCD</span>
                            </span>
                          </div>    
                        <div class="field field_v3">
                          <label for="email" class="ha-screen-reader">Trạng thái</label>
                          <input id="email" class="field__input" placeholder="info@gmail.com">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">Trạng thái</span>
                          </span>
                        </div>
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