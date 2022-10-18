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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/Room.css">
</head>
<body>
    <jsp:include page="MenuBar.jsp"/>

    <div class="main">
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>
            <div class="search">
                <h3>THUÊ - TRẢ PHÒNG</h3>
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
                            <input type="text" placeholder="Tìm kiếm phòng">
                            <ion-icon name="search-outline"></ion-icon>
                        </label>
                    </div>
                    <div class="search">
	                <button class="btn-search">Search</button>
	            </div>
                </div>
                <div class="details">
                    <div class="recentOrder">
                        <div class="wrapper">
                            <div class="tabs">
                              <div class="tab">
                                <input type="radio" name="css-tabs" id="tab-1" checked class="tab-switch">
                                <label for="tab-1" class="tab-label">
                                    <ion-icon name="storefront-outline" class="icon-"></ion-icon>
                                    Phòng chờ</label>
                                <div class="tab-content">
                                    <div class="tab-item">                                                                            
                                        <div class="tab-item-first">
                                            P.101
                                            <button class="btn-thue">Thuê</button>
                                        </div>
                                        <div class="tab-item-second">
                                            <ion-icon name="business-outline"></ion-icon>
                                            Chưa sử dụng
                                        </div>
                                    </div>
                                    <div class="tab-item">
                                        <div class="tab-item-first">
                                            P.102
                                            <button class="btn-thue">Thuê</button>
                                        </div>
                                        <div class="tab-item-second">
                                            <ion-icon name="business-outline"></ion-icon>
                                            Chưa sử dụng
                                        </div>
                                    </div>
                                </div>
                              </div>
                              <div class="tab">
                                <input type="radio" name="css-tabs" id="tab-2" class="tab-switch">
                                <label for="tab-2" class="tab-label">
                                    <ion-icon name="id-card-outline"></ion-icon>
                                    Phòng đang thuê</label>
                                <div class="tab-content">
                                    <div class="tab-item-2">
                                        <div class="tab-item-first">
                                            P.104
                                        </div>
                                        <div class="tab-item-third">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>Tên khách hàng</td>
                                                        <td>Loại phòng</td>
                                                        <td><button id="btn3" class="info-view">Thông tin</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Ngày đến</td>
                                                        <td>Ngày đi</td>
                                                        <td><button id="btn4">Trả phòng</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-item-2">
                                        <div class="tab-item-first">
                                            P.105
                                        </div>
                                        <div class="tab-item-third">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>Tên khách hàng</td>
                                                        <td>Loại phòng</td>
                                                        <td><button id="btn3" class="info-view">Thông tin</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Ngày đến</td>
                                                        <td>Ngày đi</td>
                                                        <td><button id="btn4">Trả phòng</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                              </div>
                        </div>
                    </div>

                </div>
                <div class="recentCustomerss" id="recentCustomerss">
                    <div class="cardHeader">
                        <h2>Thuê phòng</h2>
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
                        <div class="field field_v3">
                          <label for="email" class="ha-screen-reader">CMND</label>
                          <input id="email" class="field__input" placeholder="info@gmail.com">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">CMND</span>
                          </span>
                        </div>
                        <div class="field field_v3">
                            <label for="email" class="ha-screen-reader">Quốc tịch</label>
                            <input id="email" class="field__input" placeholder="info@gmail.com">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Quốc tịch</span>
                            </span>
                        </div>
                        <div class="field field_v3">
                            <label for="email" class="ha-screen-reader">Loại</label>
                            <input id="email" class="field__input" placeholder="info@gmail.com">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">VIP</span>
                            </span>
                        </div>                       
                    </div>
                    <button class="pay-info">Thuê</button>
                    <button class="exit-info">Thoát</button>
                </div>
                <div class="recentPays" id="recentPays">
                    <div class="cardHeader">
                        <h2>Thông tin khách hàng</h2>
                    </div>
                    <div class="page-info">
                        <div class="field field_v1">
                            <label for="first-name" class="ha-screen-reader">Họ và tên khách hàng</label>
                            <input id="first-name" class="field__input" placeholder="vd: Thái Bá Tường" disabled>
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Họ và tên khách hàng</span>
                            </span>
                          </div>
                          <div class="field field_v2">
                            <label for="last-name" class="ha-screen-reader">Số điện thoại</label>
                            <input id="last-name"  class="field__input" placeholder="034xxxxxxx" disabled>
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Số điện thoại</span>
                            </span>
                          </div>    
                          <div class="field field_v3">
                            <label for="email" class="ha-screen-reader">CMND</label>
                            <input id="email" class="field__input" placeholder="info@gmail.com" disabled>
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">CMND</span>
                            </span>
                          </div>
                          <div class="field field_v3">
                              <label for="email" class="ha-screen-reader">Quốc tịch</label>
                              <input id="email" class="field__input" placeholder="info@gmail.com" disabled>
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">Quốc tịch</span>
                              </span>
                          </div>
                          <div class="field field_v3">
                              <label for="email" class="ha-screen-reader">Loại</label>
                              <input id="email" class="field__input" placeholder="info@gmail.com" disabled>
                              <span class="field__label-wrap" aria-hidden="true">
                                <span class="field__label">VIP</span>
                              </span>
                          </div>                       
                    </div>
                    <button class="exit-view">Thoát</button>
                </div>
                <div class="recentHotels" id="recentHotels">
                    <div class="cardHeader">
                        <img src="https://media-cdn.tripadvisor.com/media/photo-s/25/04/93/1e/blossom-hotel-houston.jpg" alt="">
                    </div>
                    <div class="page-info">
                        <div class="field field_v1">                         
                            <input id="first-name" class="field__input" placeholder="P.101" disabled>
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Tên phòng: P.101</span>
                            </span>
                          </div>
                          <div class="field field_v2">
                            <input id="last-name"  class="field__input" placeholder="Phòng đơn" disabled>
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Loại phòng: đơn</span>
                            </span>
                          </div>
                          <div class="field field_v2">
                            <input id="last-name"  class="field__input" placeholder="350000" disabled>
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Giá: 350000</span>
                            </span>
                          </div>                         
                    </div>
                    <button class="exit-room">Thoát</button>
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
	    const rooms = document.querySelectorAll('.tab-item-second')
	    const infoBtns = document.querySelectorAll('.info-view')
	    const payBtns = document.querySelectorAll('.btn-thue')
	    const modal = document.querySelector('.recentCustomerss')
	    const roominfo = document.querySelector('.recentHotels')
	    const modalClose = document.querySelector('.exit-info')
	    const viewinfo = document.querySelector('.recentPays')
	    const viewClose = document.querySelector('.exit-view')
	    const roomClose = document.querySelector('.exit-room')
	    
	    function showpay(){
	        modal.classList.add('open-info');
	        roominfo.classList.remove('open-room');
	        viewinfo.classList.remove('open-pay')
	    }
	
	    function hidepay(){
	        modal.classList.remove('open-info')
	    }
	
	    function showroom(){
	        roominfo.classList.add('open-room');
	        modal.classList.remove('open-info');
	        viewinfo.classList.remove('open-pay')
	    }
	
	    function hideroom(){
	        roominfo.classList.remove('open-room')
	    }
	
	    function showinfo(){
	        viewinfo.classList.add('open-pay');
	        modal.classList.remove('open-info');
	        roominfo.classList.remove('open-room')
	    }
	
	    function hideinfo(){
	        viewinfo.classList.remove('open-pay')
	    }
	
	    for(const room of rooms){
	        room.addEventListener('click', showroom)
	    }
	
	    for(const infoBtn of infoBtns){
	        infoBtn.addEventListener('click', showinfo)
	    }
	
	    for(const payBtn of payBtns){
	        payBtn.addEventListener('click', showpay)
	    }
	
	    modalClose.addEventListener('click', hidepay)
	    viewClose.addEventListener('click', hideinfo)
	    roomClose.addEventListener('click', hideroom)
	</script>
</body>
</html>