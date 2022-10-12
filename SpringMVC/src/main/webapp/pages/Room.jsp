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
                                        </div>
                                        <div class="tab-item-second">
                                            <ion-icon name="business-outline"></ion-icon>
                                            Chưa sử dụng
                                        </div>
                                    </div>
                                    <div class="tab-item">
                                        <div class="tab-item-first">
                                            P.102
                                        </div>
                                        <div class="tab-item-second">
                                            <ion-icon name="business-outline"></ion-icon>
                                            Chưa sử dụng
                                        </div>
                                    </div>
                                    <div class="tab-item">
                                        <div class="tab-item-first">
                                            P.103
                                        </div>
                                        <div class="tab-item-second">
                                            <ion-icon name="business-outline"></ion-icon>
                                            Chưa sử dụng
                                        </div>
                                    </div>
                                    <div class="tab-item">
                                        <div class="tab-item-first">
                                            P.104
                                        </div>
                                        <div class="tab-item-second">
                                            <ion-icon name="business-outline"></ion-icon>
                                            Chưa sử dụng
                                        </div>
                                    </div>
                                    <div class="tab-item">
                                        <div class="tab-item-first">
                                            P.105
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
                                    <div class="tab-item">
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
                                    <div class="tab-item">
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
                            <!-- <p>Example line outside of tab box</p> -->
                        </div>
                    </div>
                    <!-- <div class="recentCustomers">
                        <div class="cardHeader">
                            <h2>Thêm mới</h2>
                        </div>
                    </div> -->
                </div>
                <div class="recentCustomerss" id="recentCustomerss">
                    <div class="cardHeader">
                        <h2>Thông tin khách hàng</h2>
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
                          <label for="phone" class="ha-screen-reader">Số điện thoại</label>
                          <input id="phone"  class="field__input" placeholder="034xxxxxxx">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">Số điện thoại</span>
                          </span>
                        </div>    
                        <div class="field field_v2">
                          <label for="CMND" class="ha-screen-reader">CMND</label>
                          <input id="CMND" class="field__input" placeholder="056xxxxxxxxxx">
                          <span class="field__label-wrap" aria-hidden="true">
                            <span class="field__label">CMND</span>
                          </span>
                        </div>
                        <div class="field field_v2">
                            <label for="country" class="ha-screen-reader">Quốc tịch</label>
                            <input id="country" class="field__input" placeholder="Việt nam">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">Quốc tịch</span>
                            </span>
                        </div>
                        <div class="field field_v2">
                            <label for="email" class="ha-screen-reader">Loại</label>
                            <input id="email" class="field__input" placeholder="VIP">
                            <span class="field__label-wrap" aria-hidden="true">
                              <span class="field__label">VIP</span>
                            </span>
                        </div>                       
                    </div>
                    <button class="exit-info">Thoát</button>
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