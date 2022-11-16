$( document ).ready(function() {
	getRoomEmpty()
})

$(document).on("click",".exit-view", function(e){
	$('#recentPays').hide()
})

$(document).on("click",".exit-room", function(e){
	$('#recentHotels').hide()
})

$(document).on("click", ".tab-item-third", function(e){
	$('#recentPays').show()
	$('#recentCustomerss').hide()
	$('#recentHotels').hide()
})

$(document).on("click", ".btn-thue", function(e){
	$('#recentCustomerss').show()
	$('#recentPays').hide()
	$('#recentHotels').hide()
})

$(document).on("click", ".tab-item-second", function(e){
	$('#recentCustomerss').hide()
	$('#recentPays').hide()
	$('#recentHotels').show()
})

$("#tab-1").click(function(){
	getRoomEmpty()
})

$("#tab-2").click(function(){
	getRentedRoom()
})

// event view room
$(document).on("click", ".tab-item-second", function() {
	let maPhong = $(this).closest(".tab-item").attr("id")
	
	getRoom(maPhong)
})

// event check out
$(document).on("click", "#btn4", function(e){
	$('.bill-modal').addClass('open')
	
	// ngăn event hiện thông tin khách hàng   
	e.stopPropagation()
})

$(document).on("click", "#btnXacNhan", function() {
	
	let maPhong = $(this).closest(".tab-item-2").attr("id")
	
	$.ajax({
        url: 'Rent/CheckOut',
        type: 'POST',
        dataType: 'json',
        data: {
			maPhong: maPhong
		}
	    }).done(function(response) {        
	       	if(response != 0) {
				getRentedRoom()
			} else {
				console.log("failed")
			}
	    })
})

// event cancel rent room
$(document).on("click", "#btn3", function(e){
	let maPhong = $(this).closest(".tab-item-2").attr("id")
	
	$.ajax({
        url: 'Rent/CancelRenting',
        type: 'POST',
        dataType: 'json',
        data: {
			maPhong: maPhong
		}
	    }).done(function(response) {        
	       	if(response != 0) {
		
				getRentedRoom()
			} else {
				console.log("failed")
			}
	    })
	 
	 // ngăn event hiện thông tin khách hàng   
	 e.stopPropagation()
})

// event search
$('#txtSearch').keypress(function(e) {
	var key = e.which;
	let searchVal = $('#txtSearch').val()

	if(key == 13 && !searchVal == "")  // the enter key code
	{
		$.ajax({
        url: 'Rent/Search',
        type: 'GET',
        dataType: 'json',
        data: {
			tenPhong: searchVal
		}
	    }).done(function(response) {        
	       	renderEmptyRoom(response.emptyRoomList)
	       	renderRentedRoom(response.rentedRoomList)
	    })
	}
})

$('#btnRent').click(function(e) {

	let tenKH = $('#txtName').val()
	let sdt = $('#txtSDT').val()
	let cmnd = $('#txtCMND').val()
	let quocTich = $('#txtQuocTich').val()
	let vip = $('#txtVIP').val()
	let startDate = $('#start').val()
	let endDate = $('#end').val()

	$.ajax({
    url: 'Rent/RentRoom',
    type: 'POST',
    dataType: 'json',
    data: {
		tenKH: tenKH,
		sdt: sdt,
		cmnd: cmnd,
		quocTich: quocTich,
		vip: vip,
		ngayDen: new Date(startDate).toLocaleDateString(),
		ngayDi: new Date(endDate).toLocaleDateString()
	}
    }).done(function(response) {        
		
    })

})

function getRoomEmpty(){
	$.ajax({
        url: 'Rent/GetEmptyRoom',
        type: 'GET',
        dataType: 'json',
        data: {}
    }).done(function(response) {        
       	renderEmptyRoom(response)
    })
}

function getRentedRoom(){
	$.ajax({
        url: 'Rent/GetRentedInfo',
        type: 'GET',
        dataType: 'json',
        data: {}
    }).done(function(response) {
       	renderRentedRoom(response)
    })
}

function getRoom(maPhong){
	$.ajax({
        url: 'Rent/GetRoom',
        type: 'GET',
        dataType: 'json',
        data: {
			maPhong: maPhong
		}
    }).done(function(response) { 

       	room = ''
       	room += `<div class="field field_v1">                         
	                <input id="first-name" class="field__input" disabled value="${response.tenPhong}">
	                <span class="field__label-wrap" aria-hidden="true">
	                  <span class="field__label">Tên phòng</span>
	                </span>
	              </div>
	              <div class="field field_v2">
	                <input id="last-name"  class="field__input" placeholder="Phòng đơn" disabled value="${response.loaiPhong}">
	                <span class="field__label-wrap" aria-hidden="true">
	                  <span class="field__label">Loại phòng</span>
	                </span>
	              </div>
	              <div class="field field_v2">
	                <input id="last-name"  class="field__input" placeholder="350000" disabled value="${response.gia}">
	                <span class="field__label-wrap" aria-hidden="true">
	                  <span class="field__label">Giá</span>
	                </span>
	              </div>`
       	
		$('#roomInfo').empty()
		$('#roomInfo').append(room)
    })
}

function renderEmptyRoom(list){
	emptyRoom = ''
	       	
   	$.each(list, function( key, value ) {

		emptyRoom += `<div class="tab-item" id="${value.maPhong}">                                                                            
                        <div class="tab-item-first">
                            ${value.tenPhong}
                            <button class="btn-thue">Thuê</button>
                        </div>
                        <div class="tab-item-second">
                                <ion-icon name="bed-outline"></ion-icon>
                                ${value.loaiPhong}
                        </div>
                        <div class="tab-item-second">
                            <ion-icon name="business-outline"></ion-icon>
                            Chưa sử dụng
                        </div>
                    </div>`
		})
	$('#emptyRoom').empty()
	$('#emptyRoom').append(emptyRoom)
}

function renderRentedRoom(list){
	rentedRoom = ''
       	
   	$.each(list, function( key, value ) {

		rentedRoom += `<div class="tab-item-2" id="${value.room.maPhong}">
                            <div class="tab-item-first">
                                ${value.room.tenPhong}
                            </div>
                            <div class="tab-item-third">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>${value.room.loaiPhong}</td>
                                            <td>${value.customer.tenKH}</td>
                                            <td><button id="btn3" class="info-view">Huỷ</button></td>
                                        </tr>
                                        <tr>
                                            <td>Ngày đến: ${new Date(value.ngayDen).toLocaleDateString()}</td>
                                            <td>Ngày đi: ${new Date(value.ngayDi).toLocaleDateString()}</td>
                                            <td><button id="btn4" class="info-view">Trả phòng</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>`
		})
	$('#rentedRoom').empty()
	$('#rentedRoom').append(rentedRoom)
}

