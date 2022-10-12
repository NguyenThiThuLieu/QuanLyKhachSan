<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOTEL QUY NHƠN</title>
    
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Home.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/selectbox.css">
    
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="<%= request.getContextPath() %>/resources/js/Home.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/RoomManage.js"></script>
</head>
<body>

    <jsp:include page="MenuBar.jsp"/>
    
    <div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>QUẢN LÍ PHÒNG</h3>
            </div>
            <div class="user">
                <img src="anhbac.jpg">
            </div>
        </div>
        <div class="topfour">
            <div class="tab-pane active">
                <div class="cardBox">
                    <div class="search">
                        <label>
                            <input id="txtSearch" name="tenPhong" type="text" placeholder="Tìm kiếm phòng">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <div class="search">
                        <button id="btn2">Thêm mới</button>
                    </div>
                    <div>
                    	<span class="errorMessage" id="errorMessage">${errorMessage }</span>
                    </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div class="cardHeader">
                            <h2>DANH SÁCH PHÒNG</h2>
                            <button class="btn" id="btnViewAll" style="border: none">View All</button>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <td>Mã Phòng</td>
                                    <td>Tên phòng</td>
                                    <td>Loại phòng</td>
                                    <td>Giá phòng</td>
                                    <td>Trạng thái</td>
                                    <td>Chỉnh sửa</td>
                                    <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspXóa</td>
                                </tr>
                            </thead>
                            <tbody id="tbody">
                                <c:forEach var="room" items="${roomList}">
	                               <tr id='${room.maPhong }'>
	                                    <td>${room.maPhong }</td>
	                                    <td>${room.tenPhong }</td>
	                                    <td>${room.loaiPhong }</td>
	                                    <td>${room.gia }</td>
	                                    <td><span class="status 
	                                    
	                                    <c:choose>
										  	<c:when test="${room.trangThai == 0}">
										    	delivered">Trống
										  	</c:when>
										  	<c:when test="${room.trangThai == 1}">
										    	return">Đang thuê
										  	</c:when>
										  	<c:otherwise>
										    	pending">Chưa dọn
	 										</c:otherwise>
										</c:choose>
	                                    
	                                    </span></td>
	                                    <td>
	                                    	<button class="room-icon js-edit btnEdit">
	                                    		<ion-icon class="edit-icon" name="construct-outline"></ion-icon>
	                                    	</button>
	                                    </td>
	                                    <td><button class="room-icon btnDelete"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>
	                                </tr>

                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="recentCustomerss" id="recentCustomerss">

                        <div class="cardHeader">
	                            <h2>Thêm mới</h2>
	                            <button class="snip1457" id="btnAdd">Lưu</button>
                        </div>
                        <div class="page">	
                            <div class="field field_v1">
                                <label for="first-name" class="ha-screen-reader">Mã phòng</label>
                                <input name="maPhong" id="maPhongAdd" class="field__input" placeholder="vd: P201">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Mã phòng</span>
                                </span>
                              </div>
                            <div class="field field_v1">
                              <label for="first-name" class="ha-screen-reader">Tên phòng</label>
                              <input name="tenPhong" id="tenPhongAdd" class="field__input" placeholder="vd: Phòng 201">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Tên phòng</span>
                              </span>
                            </div>
                            <div class="wrapper">
                                <select name="loaiPhong" id="loaiPhongAdd" class="wrap">
                                    <option value="P0" class="wraptext">Phòng đơn</option>
                                    <option value="P1" class="wraptext">Phòng đôi</option>
                                 </select>
                            </div>
                            <div class="field field_v1">
                              <label for="first-name" class="ha-screen-reader">Giá phòng</label>
                              <input name="gia" id="giaAdd" class="field__input" placeholder="vd: 100000">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Giá phòng</span>
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
           		<input type="hidden" name="maPhong" id="maPhong" value="">
                <label for="name" class="modal-label">
                    <ion-icon name="text-outline" class="modal-icon"></ion-icon>
                    Tên phòng
                </label>
                <input name="tenPhong" id="name" type="text" class="modal-input" placeholder="Tên phòng">

                <label for="type" class="modal-label">
                    <ion-icon name="bed-outline" class="modal-icon"></ion-icon>
                    Loại phòng
                </label>
                <div class="wrapper">
                    <select name="loaiPhong" id="loaiPhong" class="wrap" style="margin-bottom: 25px;">
                        <option value="P0" class="wraptext">Phòng đơn</option>
                        <option value="P1" class="wraptext">Phòng đôi</option>
                     </select>
                </div>
                <label for="name" class="modal-label">
                    <ion-icon name="cash-outline"></ion-icon>
                    Giá
                </label>
                <input name="gia" id="gia" type="text" class="modal-input" placeholder="Giá phòng">
                <button class="btn-edit" id="btnDone">
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
        	 let recentCustomerss = $("#recentCustomerss").css('display')
        	 if (recentCustomerss == 'none') {
        		 $("#recentCustomerss").css('display', 'block')
        	 } else {
        		 $("#recentCustomerss").css('display', 'none')
        	 }
        		 
        };
        
        // hide error message 
        let errorMessage = document.getElementById("errorMessage");
        
        if (errorMessage.innerHTML != "") {
        	const hideError = setTimeout(()=>errorMessage.style.display = 'none', 3000)
        }
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