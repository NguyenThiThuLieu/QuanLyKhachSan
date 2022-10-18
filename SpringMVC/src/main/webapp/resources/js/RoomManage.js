callAllEvent()

function callAllEvent() {
	$( document ).ready(function() {
		eventDelete()
		eventAdd()
		eventSetData()
		eventEdit()
		eventViewAll()
		eventSearch()
	})
}


function eventAdd(){
  	
  	$('#btnAdd').click(function (){
		errorMessage.style.display = 'block'
		$('#errorMessage').text(``)
	
		let maPhong = $('#maPhongAdd').val()
		let tenPhong = $('#tenPhongAdd').val()
		let loaiPhong = $('#loaiPhongAdd').val()
		loaiPhong = loaiPhong == "P0" ? "Phòng đơn" : "Phòng đôi"
		let gia = $('#giaAdd').val()
		
		gia = gia == "" ? 0 : gia
		
		if (maPhong != '') {
			$.ajax({
            url: 'Room/Add',
            type: 'POST',
            dataType: 'json',
            data: {
				maPhong: maPhong,
                tenPhong: tenPhong,
                loaiPhong: loaiPhong,
                gia: gia
            }
	        }).done(function(response) {
				$('#tbody').empty()
	            
	           	let tbody = getTBody(response.roomList)
				
				$('#tbody').append(tbody)

				let error = response.error;
				
				if (error) {
					$('#errorMessage').text(`Phòng ${maPhong} đã tồn tại`)
						if (errorMessage.innerHTML != "") {
				        	const hideError = setTimeout(()=>errorMessage.style.display = 'none', 3000)
				        }
				}
				
				callAllEvent()
	        });
		} else {
			$('#errorMessage').text(`Vui lòng nhập mã phòng`)
		}
	})

}

function eventDelete(){

    const btnDeletes = document.querySelectorAll(".btnDelete")

	$.each(btnDeletes, function( key, value ) {
	  	
	  	value.onclick = function (){
			let trid = $(this).closest('tr').attr('id')
		
			$.ajax({
                url: 'Room/Remove',
                type: 'POST',
                dataType: 'json',
                data: {
                    maPhong: trid, 
                }
            }).done(function(response) {
				$('#tbody').empty()
                
               	let tbody = getTBody(response)
				
				$('#tbody').append(tbody)
				
				callAllEvent()
            });
		}
	});

}

function eventSetData() {

	ModalHandler()


	const btnEdits = document.querySelectorAll(".btnEdit")
	$.each(btnEdits, function( key, value ) {
		
		value.onclick = function (){
			
			$('#maPhong').val('')
			$('#name').val('')
			$('#loaiPhong').val('')
			$('#gia').val('')
			
			let trid = $(this).closest('tr').attr('id')

			$.ajax({
                url: 'Room/GetRoom',
                type: 'GET',
                dataType: 'json',
                data: {
                    maPhong: trid, 
                }
            }).done(function(response) {
				$('#maPhong').val(response.maPhong)
				$('#name').val(response.tenPhong)
				$('#loaiPhong').val(response.loaiPhong == "Phòng đơn" ? "P0" : "P1")
				$('#gia').val(response.gia)
				
				callAllEvent()
            });
		}
	});

}

function eventEdit() {

	ModalHandler()

	$('#btnDone').click(function (){
		let maPhong = $('#maPhong').val()
		let tenPhong = $('#name').val()
		let loaiPhong = $('#loaiPhong').val()
		loaiPhong = loaiPhong == "P0" ? "Phòng đơn" : "Phòng đôi"
		let gia = $('#gia').val()
		
		$.ajax({
            url: 'Room/Edit',
            type: 'POST',
            dataType: 'json',
            data: {
                maPhong: maPhong,
                tenPhong: tenPhong,
                loaiPhong: loaiPhong,
                gia: gia
            }
        }).done(function(response) {
	
			$('#tbody').empty()

            let tbody = getTBody(response)
			
			$('#tbody').append(tbody)
			
			callAllEvent()
			
			const modal = document.querySelector('.js-modal')
			hideShowedit(modal)
			
		})	
	})
}

function eventSearch() {

	$('#txtSearch').keypress(function(e) {
		var key = e.which;
		errorMessage.style.display = 'block'
		$('#errorMessage').text(``)
		let searchVal = $('#txtSearch').val()

 		if(key == 13 && !searchVal == "")  // the enter key code
  		{
			
			$.ajax({
	            url: 'Room/Search',
	            type: 'GET',
	            dataType: 'json',
	            data: {
	                searchString: searchVal
	            }
	        }).done(function(response) {
				if (response.length != 0) {
					$('#tbody').empty()
	
		            let tbody = getTBody(response)
					
					$('#tbody').append(tbody)
					
					$('#errorMessage').text('')
					
					callAllEvent()
				} else {
					$('#errorMessage').text(`Không tìm thấy phòng: ${searchVal}`)
					if (errorMessage.innerHTML != "") {
			        	const hideError = setTimeout(()=>errorMessage.style.display = 'none', 3000)
			        }
				}
			})
  		}
	})
}

function eventViewAll() {
  	$('#btnViewAll').click(function (){
		$.ajax({
            url: 'Room/GetAllRoom',
            type: 'GET',
            dataType: 'json',
            data: {

            }
        }).done(function(response) {
			$('#tbody').empty()
            
           	let tbody = getTBody(response)
			
			$('#tbody').append(tbody)
			
			callAllEvent()
        });
	})

}

function getTBody(roomList) {
	let tbody = ``;
	
	$.each(roomList, function( key, value ) {
		tbody += `<tr id="${value.maPhong }">`
        tbody += `<td>${value.maPhong }</td>`
        tbody += `<td>${value.tenPhong }</td>`
        tbody += `<td>${value.loaiPhong }</td>`
        tbody += `<td>${value.gia }</td>`
        tbody += `<td><span class="status `
        let trangThai = `${value.trangThai}`
        if (trangThai == 0) {
			tbody += `delivered">Trống`
		} else if(trangThai == 1) {
			tbody += `return">Đang thuê`
		} else {
			tbody += `pending">Chưa dọn`
		}
            
        tbody += `</span></td>`
        tbody += `<td>
            	<button class="room-icon js-edit btnEdit">
            		<ion-icon class="edit-icon" name="construct-outline"></ion-icon>
            	</button>
            </td>`
        tbody += `<td><button class="room-icon btnDelete"><ion-icon class="delete-icon" name="trash-outline"></ion-icon></button></td>`
        tbody += `</tr>`
	});
	
	return tbody
}

function ModalHandler() {
	const editBtns = document.querySelectorAll('.js-edit')
    
    const modalClose = document.querySelector('.js-modal-close')
    
    for(const editBtn of editBtns){
        editBtn.addEventListener('click', showedit)
    }
    modalClose.addEventListener('click', hideShowedit)
}

function showedit(modal){
    modal.classList.add('open')
}

function hideShowedit(modal){
    modal.classList.remove('open')
}