<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOTEL QUY NHƠN</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Home.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/selectbox.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Room.css">
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
                <h3>ĐẶT PHÒNG</h3>
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
                    <div class="search">
                        <label>
                            <input type="text" placeholder="Tìm kiếm mã phòng">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <div class="search">
                        <button style="border:none;" class="info-view-info">Tìm kiếm</button>
                    </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div class="cardHeader">
                            <h2>DANH SÁCH ĐẶT PHÒNG</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <td>Mã KH</td>
                                    <td>Mã phòng</td>
                                    <td>Mã NV</td>
                                    <td>Ngày đến</td>
                                    <td>Ngày đi</td>
                                    <td>Tiền cọc</td>
                                    <td>Trạng thái</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr> 
                                    <td>KH01</td>
                                    <td>P101</td>
                                    <td>NV101</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>300000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>  
                                </tr>
                                <tr> 
                                    <td>KH02</td>
                                    <td>P102</td>
                                    <td>NV102</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>150000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>
                                </tr>
                                <tr>
                                    <td>KH03</td>
                                    <td>P103</td>
                                    <td>NV103</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>300000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>
                                </tr>
                                <tr>
                                    <td>KH04</td>
                                    <td>P104</td>
                                    <td>NV104</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>150000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>
                                </tr>
                                <tr>
                                    <td>KH05</td>
                                    <td>P105</td>
                                    <td>NV105</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>300000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>
                                </tr>
                                <tr>
                                    <td>KH06</td>
                                    <td>P106</td>
                                    <td>NV106</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>150000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>
                                </tr>
                                <tr>
                                    <td>KH07</td>
                                    <td>P107</td>
                                    <td>NV101</td>
                                    <td>23/10/2022</td>
                                    <td>27/10/2022</td>
                                    <td>300000đ</td>
                                    <td>Chưa biết</td>
                                    <td><button id="btn2" class="info-view">Đặt phòng</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="recentCustomerss" id="recentCustomerss">
                        <div class="cardHeader">
                            <h2>Đặt phòng</h2>
                            <button class="snip1457">Lưu</button>
                        </div>
                        <div class="page">
                            <div class="field field_v1">
                                <label for="first-name" class="ha-screen-reader">Mã khách hàng</label>
                                <input id="first-name" class="field__input" placeholder="vd: KH01">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Mã khách hàng</span>
                                </span>
                            </div>
                            <div class="datemember">
                                <p style="padding: 10px;">Phòng đặt : P101</p>
                                <!-- <p style="padding: 10px;margin-left: 100px;">Loại phòng : Phòng đơn</p> -->
                            </div>
                            <div class="field field_v1">
                                <label for="first-name" class="ha-screen-reader">Mã nhân viên</label>
                                <input id="first-name" class="field__input" placeholder="vd: NV01">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Mã nhân viên</span>
                                </span>
                            </div>
                            <div class="datemember">
                                <div class="field field_v3" style="margin-left: 10px">
                                    <label for="start"  style="margin-right: -10px;">Ngày đến:</label>
                                    <input class="date" type="date" id="start" name="trip-start"
                                         value="2022-07-22"
                                         min="2022-01-01" max="2022-12-31">
                                </div>
                                <div class="field field_v3" style="margin-left: 50px;">
                                    <label for="start"  style="margin-right: 7px;">Ngày đi:</label>
                                    <input class="date" type="date" id="start" name="trip-start"
                                         value="2022-07-22"
                                         min="2022-01-01" max="2022-12-31">
                                </div>
                            </div>
                            <div class="field field_v1">
                                <label for="first-name" class="ha-screen-reader">Tiền đặt trước</label>
                                <input id="first-name" class="field__input" placeholder="vd: 150000">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Tiền đặt trước</span>
                                </span>
                            </div>
                            <div class="field field_v1">
                                <label for="first-name" class="ha-screen-reader">Ngày thực hiện</label>
                                <input id="first-name" class="field__input" placeholder="vd: 24/10/2022">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Ngày thực hiện</span>
                                </span>
                            </div>
                            <div class="field field_v1">
                                <label for="first-name" class="ha-screen-reader">Trạng thái</label>
                                <input id="first-name" class="field__input" placeholder="vd: Nội dung">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Trạng thái</span>
                                </span>
                            </div>
                        </div>
                        <button class="exit-info" id="exit-info" style="border:none;margin-left: 20px;">Thoát</button>
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
    </script>
    <script>
        const infoBtns = document.querySelectorAll('.info-view')
        const modal = document.querySelector('.recentCustomerss')
        const modalClose = document.querySelector('.exit-info')
        function showinfo(){
            modal.classList.add('open-info')
        }

        function hideinfo(){
            modal.classList.remove('open-info')
        }
        for(const infoBtn of infoBtns){
            infoBtn.addEventListener('click', showinfo)
        }
        modalClose.addEventListener('click', hideinfo)
    </script>
</body>
</html>