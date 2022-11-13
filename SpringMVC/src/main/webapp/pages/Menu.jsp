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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Menu.css">
    
</head>
<body>
    <jsp:include page="MenuBar.jsp"/>
    
	<div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>DỊCH VỤ</h3>
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
                                    <td><button class="btn-use">Sử dụng</button></td>
                                </tr>
                                <tr>
                                    <td>DV02</td>
                                    <td>Nước chanh</td>
                                    <td><span class="status pending">15000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                    <td><button class="btn-use">Sử dụng</button></td>
                                </tr>
                                <tr>
                                    <td>DV03</td>
                                    <td>Nước khoáng</td>
                                    <td><span class="status return">15000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                    <td><button class="btn-use">Sử dụng</button></td>
                                </tr>
                                <tr>
                                    <td>DV04</td>
                                    <td>Bò né</td>
                                    <td><span class="status return">30000đ</span></td>
                                    <td><button class="room-icon js-edit"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button></td>
                                    <td><button class="room-icon"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
                                    <td><button class="btn-use">Sử dụng</button></td>
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
                              <input id="first-name" class="field__input" placeholder="vd: DV01">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Mã dịch vụ</span>
                              </span>
                            </div>
                            <div class="field field_v2">
                              <label for="last-name" class="ha-screen-reader">Tên dịch vụ</label>
                              <input id="last-name"  class="field__input" placeholder="Nước cam">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Tên dịch vụ</span>
                              </span>
                            </div>    
                            <div class="field field_v3">
                              <label for="email" class="ha-screen-reader">Đơn giá</label>
                              <input id="email" class="field__input" placeholder="15000 đ/món">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Đơn giá</span>
                              </span>
                            </div>
                        </div>
                    </div>
                    <div class="recentSelect" id="recentSelect">
	                    <div class="cardHeader">
	                        <h2>Chọn khách hàng</h2>
	                    </div>
	                    <div class="page-info">
	                        <table>
	                            <thead>
	                                <tr>
	                                	<td>Mã KH</td>
	                                    <td>Tên KH</td>
	                                    <td>Ngày sử dụng</td>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td>KH01</td>
	                                    <td>Thái Bá Tường</td>
	                                    <td><input class="datee" type="date" id="start" name="ngayDen"
                                				 value="2022-07-22"
                                				 min="2000-01-01" max="2022-12-31"></td>
	                                    <td><input type="checkbox" id="ckb" name="check"/></td>                                  
	                                </tr>
	                                <tr>
	                                    <td>KH02</td>
	                                    <td>Bắc</td>
	                                    <td><input class="datee" type="date" id="start" name="ngayDen"
                                				 value="2022-07-22"
                                				 min="2000-01-01" max="2022-12-31"></td>
	                                    <td><input type="checkbox" id="ckb" name="check"/></td>                                  
	                                </tr>
	                            </tbody>
	                        </table>                                         
	                    </div>
	                    	<button id="select-customer" class="select-customer">Chọn</button>
	                    	<button id="exit-customer" class="exit-customer">Thoát</button>
                	</div>
                </div>
            </div>
        </div>
        <div class="page-service">
        	<a href="Service.jsp">
        		Danh sách dịch vụ đã sử dụng
            	<ion-icon name="arrow-forward-outline"></ion-icon>
            </a>
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
	    const useBtns = document.querySelectorAll('.btn-use')
		const choose = document.querySelector('.recentSelect')
		const chooseClose = document.querySelector('.exit-customer')
		
		const addCustomer = document.querySelector('.info-view-info')		
		const customer = document.querySelector('.recentCustomerss')
		
		function showAdd(){
	    	customer.classList.add('openCus')
	    	choose.classList.remove('open-customer')
	    }
	    
	    function showCustomer(){
			choose.classList.add('open-customer')
			customer.classList.remove('openCus')
	    }
	
	    function hideCustomer(){
	    	choose.classList.remove('open-customer')
	    }
	    
	    for(const useBtn of useBtns){
	    	useBtn.addEventListener('click', showCustomer)
	    }
	    
	    addCustomer.addEventListener('click', showAdd)
	    
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