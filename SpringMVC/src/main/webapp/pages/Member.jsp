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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/selectbox.css">
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
                <div class="cardBoxss">
                    <div class="close">
                        <a href="./System.jsp">
                            <ion-icon name="arrow-back-outline"></ion-icon>
                        </a>
                    </div>
                    <div class="box_seach">
                        <label>
                            <input type="text" placeholder="Tìm kiếm nhân viên">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <div class="box_add">
                        <button id="btn2" class="add">Thêm mới</button>
                    </div>
                </div>
            <div class="details">
                <div class="recentOrder">
                    <div class="cardHeader">
                        <h2>DANH SÁCH NHÂN VIÊN</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Mã NV</td>
                                <td>Tên nhân viên</td>
                                <td>Ngày sinh</td>
                                <td>Giới tính</td>
                                <td>SĐT</td>
                                <td>Chức vụ</td>
                                <td>Lương</td>
                                <td>Tình trạng</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="tr">
                                <td>NV01</td>
                                <td>Thái Bá Tường</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                                <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                            <tr id="tr">
                                <td>NV02</td>
                                <td>Nguyễn Thị Thu Liễu</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status pending">Quy Nhơn</span></td>
                                <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                            <tr id="tr">
                                <td>NV03</td>
                                <td>Mai Anh Bắc</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status return">Gia Lai</span></td>
                                <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                            <tr id="tr">
                                <td>NV04</td>
                                <td>Nguyễn Văn A</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status inprogress">Tuy Phước</span></td>
                                <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                            <tr id="tr">
                                <td>NV05</td>
                                <td>Trần Ngọc tiền</td>
                                <td>xxxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                                <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                              <tr id="tr">
                                <td>NV06</td>
                                <td>Trần Ngọc tiền</td>
                                <td>xxxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                                <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                              <tr id="tr">
                                <td>NV07</td>
                                <td>Trần Ngọc tiền</td>
                                <td>xxxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                                 <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
                            </tr>
                              <tr id="tr">
                                <td>NV08</td>
                                <td>Trần Ngọc tiền</td>
                                <td>xxxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td>xxxx</td>
                                <td><span class="status delivered">Quy Nhơn</span></td>
                                 <td>
                                    <button class="room-icon js-edit" title="Chỉnh sửa"><ion-icon class="edit-icon" name="construct-outline"></ion-icon></button>
                                    <button class="room-icon" title="Xóa"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button>
                                </td>
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
                                <label for="first-name" class="ha-screen-reader">Mã NV</label>
                                <input id="first-name" class="field__input" placeholder="vd: P.201">
                                <span class="field__label-wrap" aria-hidden="true">
                                  <span class="field__label">Mã NV</span>
                                </span>
                              </div>
                            <div class="field field_v1">
                              <label for="first-name" class="ha-screen-reader">Tên NV</label>
                              <input id="first-name" class="field__input" placeholder="vd: Phòng 201">
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Tên NV</span>
                              </span>
                            </div>
                            <div class="datemember">
                                <div class="field field_v1">
                                    <label for="first-name" class="ha-screen-reader">Ngày sinh</label>
                                    <input id="first-name" class="field__input" placeholder="vd: 100000">
                                    <span class="field__label-wrap" aria-hidden="true">
                                      <span class="field__label">Ngày sinh</span>
                                    </span>
                                </div>
                                <div class="field field_v1">
                                    <label for="first-name" class="ha-screen-reader">Giới tính</label>
                                    <input id="first-name" class="field__input" placeholder="vd: 100000">
                                    <span class="field__label-wrap" aria-hidden="true">
                                      <span class="field__label">Giới tính</span>
                                    </span>
                                </div>
                            </div>
                            <div class="datemember">
                                <div class="field field_v1">
                                    <label for="first-name" class="ha-screen-reader">Số điện thoại</label>
                                    <input id="first-name" class="field__input" placeholder="vd: 100000">
                                    <span class="field__label-wrap" aria-hidden="true">
                                      <span class="field__label">Số điện thoại</span>
                                    </span>
                                </div>
                                <div class="field field_v1">
                                    <label for="first-name" class="ha-screen-reader">Mật khẩu</label>
                                    <input id="first-name" class="field__input" placeholder="vd: 100000">
                                    <span class="field__label-wrap" aria-hidden="true">
                                      <span class="field__label">Mật khẩu</span>
                                    </span>
                                </div>
                            </div>
                            <div class="wrapper">
                                <select id="" class="wrap">
                                    <option value="P0">Nhân viên</option>
                                    <option value="P1">Quản lí</option>
                                </select>
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
                    Mã NV
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Mã NV">

                <label for="name" class="modal-label">
                    <ion-icon name="text-outline" class="modal-icon"></ion-icon>
                    Tên nhân viên
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Tên nhân viên">
               
                <label for="name" class="modal-label">
                    <ion-icon name="calendar-outline"></ion-icon>
                    Ngày sinh
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Ngày sinh">
                
                <label for="name" class="modal-label">
                    <ion-icon name="transgender-outline"></ion-icon>
                    Giới tính
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Giới tính">
                
                <label for="name" class="modal-label">
                    <ion-icon name="call-outline"></ion-icon>
                    Số điện thoại
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Số điện thoại">
                
                <label for="name" class="modal-label">
                    <ion-icon name="apps-outline"></ion-icon>
                    Chức vụ
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Chức vụ">
                
                <label for="name" class="modal-label">
                   <ion-icon name="cash-outline"></ion-icon>
                    Lương
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Lương">
                
                <label for="name" class="modal-label">
                   <ion-icon name="code-slash-outline"></ion-icon>
                    Tình trạng
                </label>
                <input id="name" type="text" class="modal-input" placeholder="Tình trạng">
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
                document.getElementById("tableee").style.marginTop = '-270px';
                document.getElementById("tr").style.margin = '60px';
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