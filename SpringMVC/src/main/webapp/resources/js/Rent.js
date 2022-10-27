$( document ).ready(function() {
	getRoomEmpty()
})

$(document).on("click",".exit-view", function(e){
	$('#recentPays').hide()
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
	 
	 // ngăn event hiện thông tin khách hàng   
	 e.stopPropagation()
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
	console.log(tenKH)
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

function getRoomID(value) {
	console.log($(value).closest(".tab-item").attr("id"))
}

function renderEmptyRoom(list){
	emptyRoom = ''
	       	
   	$.each(list, function( key, value ) {

		emptyRoom += `<div class="tab-item" id="${value[0]}">                                                                            
                        <div class="tab-item-first">
                            ${value[1]}
                            <button class="btn-thue">Thuê</button>
                        </div>
                        <div class="tab-item-second">
                                <ion-icon name="bed-outline"></ion-icon>
                                ${value[2]}
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

		rentedRoom += `<div class="tab-item-2" id="${value[0]}">
                            <div class="tab-item-first">
                                ${value[1]}
                            </div>
                            <div class="tab-item-third">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>${value[2]}</td>
                                            <td>${value[3]}</td>
                                            <td><button id="btn3" class="info-view">Huỷ</button></td>
                                        </tr>
                                        <tr>
                                            <td>Ngày đến: ${new Date(value[4]).toLocaleDateString()}</td>
                                            <td>Ngày đi: ${new Date(value[5]).toLocaleDateString()}</td>
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

/*// Button Events
function showpay(){
    $('.recentCustomerss').addClass('open-info');
    $('.recentHotels').removeClass('open-room');
    $('.recentPays').removeClass('open-pay');
}

function hidepay(){
    $('.recentCustomerss').removeClass('open-info');
}

function showroom(){
    $('.recentHotels').addClass('open-room');
    $('.recentCustomerss').removeClass('open-info');
    $('.recentPays').removeClass('open-pay');
}

function hideroom(){
    $('.recentHotels').removeClass('open-room');
}

function showinfo(){
    $('.recentPays').addClass('open-pay');
    $('.recentCustomerss').removeClass('open-info');
    $('.recentHotels').removeClass('open-room')
}

function hideinfo(){
    $('.recentPays').removeClass('open-pay')
}

// call all event of button on screen	    
function callEventForBtn() {
	const rooms = document.querySelectorAll('.tab-item-second')

	$.each(rooms, function( key, value ) {
		value.onclick = function() {
			showroom()
			getRoomID(value)
		}
	})
	
    $(document).on("click",".info-view", function(e){
		showinfo()
	})

	const payBtns = document.querySelectorAll('.btn-thue')
	$.each(payBtns, function( key, value ) {
		value.onclick = function() {
			showpay()
			getRoomID(value)
		}
	})

    $(document).on("click",".exit-info", function(e){
		hidepay()
	})
		
	$(document).on("click",".exit-info", function(e){
		hideinfo()
	})	
	
	$(document).on("click",".exit-room", function(e){
		hideroom()
	})
}*/


