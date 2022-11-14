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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Bill.css">
    
    <script src="<%= request.getContextPath() %>/resources/js/Home.js"></script>
</head>
<body>
    <jsp:include page="MenuBar.jsp"/>

    <div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>HÓA ĐƠN</h3>
            </div>
            <div class="user">
                <img src="anhbac.jpg">
            </div>
        </div>
        <div class="topfour">
            <div class="details-information">
                <div class="information">
                    <p class="name" >Họ và tên khách hàng: <label class="label01">Thái Bá Tường</label> </p>
                    <p class="address" >Quê quán: <label class="label02">Bình định</label></p>
                    <p class="phone" >Số điện thoại: <label class="label03">01234567</label></p>
                    <p class="bill" >Mã hóa đơn: 47 <label class="label04" >Ngày: 13/05/2001</label></p> 
                </div>
                <p class="tp" >---------------Tiền phòng--------------</p>
                <div class="middle2">
                    <table class="content-table">
                        <thead>
                            <tr>
                                <td>STT</td>
                                <td>Phòng</td>
                                <td>Số ngày</td>
                                <td>Ngày nhận phòng</td>
                                <td>Ngày trả phòng</td>
                                <td>Thành tiền</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>P101</td>
                                <td>1</td>
                                <td>13/05/2001</td>
                                <td>13/05/2001</td>
                                <td>250000</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>Tổng tiền: </td>
                                <td>250000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="tp" >---------------Tiền dịch vụ--------------</p>
                <div class="middle3">
                    <table class="content-table">
                        <thead>
                            <tr>
                                <td>STT</td>
                                <td>Tên dịch vụ</td>
                                <td>Số lượng</td>
                                <td>Đơn giá</td>
                                <td>Thành tiền</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Fitness</td>
                                <td>1</td>
                                <td>15000</td>
                                <td>15000</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>Tổng tiền: </td>
                                <td>15000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="tp" >---------------Tổng thanh toán--------------</p>
                <div class="middle4">
                    <table class="content-table">
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>Tổng tiền: </td>
                                <td>265000</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>Trả trước: </td>
                                <td>0</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>Tổng thanh toán: </td>
                                <td>265000</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>Khách trả: </td>
                                <td>265000</td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="btn-wrapper">
                    <a href="#" class="btnxd">Xác nhận</a>
                    <a href="Room.jsp" class="btnxd">Hủy</a>
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