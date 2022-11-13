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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Service.css">
    
</head>
<body>
    <jsp:include page="MenuBar.jsp"/>
    
	<div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>DỊCH VỤ ĐÃ SỬ DỤNG</h3>
            </div>
            <div class="user">
                <img src="anhbac.jpg">
            </div>
        </div>
        <div class="topfour">
            <div class="tab-pane active">
                <div class="cardBox">
                    <div class="close">
                        <a href="Menu.jsp" style="font-size: 30px;">
                            <ion-icon name="arrow-back-outline"></ion-icon>
                        </a>
                    </div>
                    <div class="searchs">
                        <label>
                            <input type="text" placeholder="Search here">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <div class="searchhs">
                        <button id="btn2" class="info-view-info">Thêm mới</button>
                    </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div class="cardHeader">
                            <h2>DANH SÁCH DỊCH VỤ ĐÃ SỬ DỤNG</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                	<td>Mã KH</td>
                                    <td>Tên khách hàng</td>
                                    <td>Tên dịch vụ</td>
                                    <td>Trạng thái</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>KH01</td>
                                    <td>Mai Anh Bắc</td>
                                    <td>Massage</td>
                                    <td class="status-yes">Đã thanh toán</td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                                <tr>
                                    <td>KH02</td>
                                    <td>Thái Bá Tường</td>
                                    <td>Fitness</td>
                                    <td class="status-false">Chưa thanh toán</td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                                <tr>
                                    <td>KH03</td>
                                    <td>Nguyễn Thị Thu Liễu</td>
                                    <td>Tắm suối nước nóng</td>
                                    <td class="status-yes">Đã thanh toán</td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                                <tr>
                                    <td>KH04</td>
                                    <td>Trần Ngọc Tiền</td>
                                    <td>Bar</td>
                                    <td class="status-false">Chưa thanh toán</td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="recentCustomerss" id="recentCustomerss">
                        <div class="cardHeader">
                            <h2>Thông tin chi tiết</h2>
                            <button class="snip1457">Lưu</button>
                        </div>
                        <div class="page">
                            <div class="field field_v1">
                              <label for="id-kh" class="ha-screen-reader">Mã khách hàng</label>
                              <input id="id-kh" class="field__input" placeholder="vd: KH01">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Mã khách hàng</span>
                              </span>
                            </div>
                            <div class="field field_v2">
                              <label for="last-name" class="ha-screen-reader">Tên khách hàng</label>
                              <input id="last-name"  class="field__input" placeholder="Tường">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Tên khách hàng</span>
                              </span>
                            </div>    
                            <div class="field field_v3">
                              <label for="service-name" class="ha-screen-reader">Tên dịch vụ</label>
                              <input id="service-name" class="field__input" placeholder="Bar">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Tên dịch vụ</span>
                              </span>
                            </div>
                            <div class="wrapper">
                                <select name="Trangthai" id="Trangthai" class="wrap">
                                    <option value="Yes" class="wraptext">Đã thanh toán</option>
                                    <option value="No" class="wraptext">Chưa thanh toán</option>
                                 </select>
                            </div>
                            <button id="exit-customer" class="exit-customer">Thoát</button>
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
                <label for="MaKH" class="modal-label">
                    <ion-icon name="text-outline" class="modal-icon"></ion-icon>
                    Mã KH
                </label>
                <input id="MaKH" type="text" class="modal-input" placeholder="KH01">
                <label for="name" class="modal-label">
                    <ion-icon name="person-outline" class="modal-icon"></ion-icon>
                    Tên KH
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Tường">
                <label for="service-name" class="modal-label">
                    <ion-icon name="qr-code-outline" class="modal-icon"></ion-icon>
                    Tên dịch vụ
                </label>
                <input id="service-name" type="text" class="modal-input" placeholder="Bar">
                <label for="status" class="modal-label">
                    <ion-icon name="cash-outline" class="modal-icon"></ion-icon>
                    Trạng thái
                </label>				
				<div class="wrapper">
                    <select name="Trangthai" id="Trangthai" class="wrap" style="margin-bottom: 25px;">
                        <option value="Yes" class="wraptext">Đã thanh toán</option>
                        <option value="No" class="wraptext">Chưa thanh toán</option>
                     </select>
                </div>
                <button class="btn-edit">
                    Done
                </button>
            </div>
        </div>
    </div>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

 	<script>
	    const useBtn = document.querySelector('.info-view-info')
		const choose = document.querySelector('.recentCustomerss')
		const chooseClose = document.querySelector('.exit-customer')
		
		useBtn.addEventListener('click', showCustomer)
	    
	    function showCustomer(){
			choose.classList.add('openCus')
	    }
	
	    function hideCustomer(){
	    	choose.classList.remove('openCus')
	    }
	    
	    chooseClose.addEventListener('click', hideCustomer)
    </script>
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
        /* document.getElementById("btn2").onclick = function () {
                document.getElementById("recentCustomerss").style.display = 'block';
            }; */
            
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