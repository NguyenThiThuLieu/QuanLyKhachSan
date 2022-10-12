package com.hotel.service;

import java.util.List;

import com.hotel.common.Constants;
import com.hotel.dao.RoomDAO;
import com.hotel.model.RoomModel;

/**
 * @author Tien
 *
 * class RoomService
 */
public class RoomService {
	
	private RoomDAO roomDAO;

	public RoomDAO getRoomDAO() {
		return roomDAO;
	}

	public void setRoomDAO(RoomDAO roomDAO) {
		this.roomDAO = roomDAO;
	}

	@SuppressWarnings("unchecked")
	public List<RoomModel> getAllRoom() {
		
		// tinh vi tri record dau tien
		//int firstIndex = Constants.NUM_RECORD * (numPage - 1);
		
		// thiet lap cau truy van sql
		String queryString = "select r from com.hotel.model.RoomModel r";
		
		// lay danh sach phong
		List<RoomModel> roomList = roomDAO.getAllRoom(queryString);
		
		return roomList;
	}
	
	@SuppressWarnings("unchecked")
	public List<RoomModel> getRoomByName(String searchString) {
		
		// khoi tao doi tuong builder kieu StringBuilder
		StringBuilder builder = new StringBuilder();
		
		// thiet lap cau truy van sql
		builder.append("select r from com.hotel.model.RoomModel r ");
		
		if (null != searchString && !Constants.EMTY_STRING.equals(searchString)) {
			builder.append("where r.tenPhong like :maPhong");
		}
		
		// lay danh sach phong
		List<RoomModel> roomList = roomDAO.getRoomByName(searchString, builder.toString());
		
		return roomList;
	}
	
	public int addRoom(RoomModel room) {
		
		// khoi tao doi tuong builder kieu StringBuilder
		StringBuilder builder = new StringBuilder();

		// thiet lap cau truy van sql
		builder.append("insert into phong(maPhong, tenPhong, loaiPhong, gia, hinhAnh, trangThai) ");
		builder.append("values(:maPhong, :tenPhong, :loaiPhong, :gia, null, :trangThai)");
		
		if (!Constants.DOUBLE_ROOM.equals(room.getMaPhong())) {
			room.setLoaiPhong(Constants.SINGLE_ROOM_TEXT);
		} else {
			room.setLoaiPhong(Constants.DOUBLE_ROOM_TEXT);
		}
		
		// them phong
		return roomDAO.addRoom(room, builder.toString());
	}
	
	public boolean containRoom(List<RoomModel> roomList, RoomModel room) {
		boolean haveRoom = false;
    	for (RoomModel roomModel : roomList) {
			if (room.equals(roomModel)) {
				haveRoom = true;
				break;
			}
		}
    	
    	return haveRoom;
	}
	
	public int removeRoom(String maPhong) {
		
		// thiet lap cau truy van sql
		String queryString = "delete from com.hotel.model.RoomModel where maPhong = :maPhong";
		
		// them phong
		return roomDAO.removeRoom(maPhong, queryString);
	}
	
	
	public int editRoom(RoomModel room) {
		
		// khoi tao doi tuong builder kieu StringBuilder
		StringBuilder builder = new StringBuilder();

		// thiet lap cau truy van sql
		builder.append("update com.hotel.model.RoomModel ");
		builder.append("set tenPhong = :tenPhong, loaiPhong = :loaiPhong, gia = :gia ");
		builder.append("where maPhong = :maPhong");
		
		// them phong
		return roomDAO.editRoom(room, builder.toString());
	}
	
	public RoomModel getRoom(String maPhong) {
		
		// thiet lap cau truy van sql
		String queryString = "select r from com.hotel.model.RoomModel r where maPhong = :maPhong";
		
		// lay phong theo ma phong
		RoomModel room = roomDAO.getRoom(maPhong, queryString);
		
		return room;
	}
}
