package com.hotel.service;

import java.util.List;

import com.hotel.dao.RentDAO;
import com.hotel.model.RoomModel;

/**
 * @author Tien
 *
 * class RentService
 */
public class RentService {
	
	private RentDAO rentDAO;

	public RentDAO getRentDAO() {
		return rentDAO;
	}

	public void setRentDAO(RentDAO rentDAO) {
		this.rentDAO = rentDAO;
	}
	
	/**
	 * phuong thuc lay du lieu phong cho
	 * 
	 * @param trangThai kieu int
	 * @return
	 */
	public List<?> getEmptyRoom(int trangThai) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r.maPhong, r.tenPhong, r.loaiPhong from com.hotel.model.RoomModel r ");
		builder.append("where trangThai = :trangThai");
		
		return rentDAO.getEmptyRoom(trangThai, builder.toString());
	}
	
	/**
	 * phuong thuc lay thong tin khach hang dang thue 
	 * 
	 * @param trangThai kieu int
	 * @return
	 */
	public List<?> getRentedInfo(int trangThai) {
    	
		StringBuilder builder = new StringBuilder();
		builder.append("select r.maPhong, r.tenPhong, r.loaiPhong, ");
		builder.append("c.tenKH, rr.ngayDen, rr.ngayDi ");
		builder.append("from com.hotel.model.RentedRoomModel rr, com.hotel.model.CustomerModel c, ");
		builder.append("com.hotel.model.RoomModel r where rr.maKH = c.maKH ");
		builder.append("and r.maPhong = rr.maPhong and rr.trangThai = :trangThai");
		
    	return rentDAO.getRentedInfo(trangThai, builder.toString());
    }
	

	public int changeStatus(String roomID, int activityStatus, int roomStatus) {
		
    	StringBuilder builder = new StringBuilder();
//		builder.append("UPDATE com.hotel.model.RentedRoomModel rr, com.hotel.model.RoomModel r ");
//		builder.append("SET rr.trangThai = :trangThaiTra, r.trangThai = :trangThaiPhong ");
//		builder.append("WHERE rr.maPhong = r.maPhong and rr.maPhong = :maPhong");
		
		builder.append("UPDATE thuephong as rr, phong as r ");
		builder.append("SET rr.TrangThai = :activityStatus, r.TrangThai = :roomStatus ");
		builder.append("WHERE rr.MaPhong = r.MaPhong and rr.MaPhong = :roomID ");
    	
    	return rentDAO.changeStatus(roomID, activityStatus, roomStatus, builder.toString());
    }
	
	/**
	 * phuong thuc tim kiem phong
	 * 
	 * @param tenPhong kieu String
	 * @param trangThai kieu int
	 * @return
	 */
	public List<?> searchEmptyRoom(String tenPhong, int trangThai) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r.maPhong, r.tenPhong, r.loaiPhong from com.hotel.model.RoomModel r ");
		builder.append("where trangThai = :trangThai and tenPhong like :tenPhong");
		
		return rentDAO.search(tenPhong, trangThai, builder.toString());
	}
	
	public List<?> searchRentedRoom(String tenPhong, int trangThai) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r.maPhong, r.tenPhong, r.loaiPhong, ");
		builder.append("c.tenKH, rr.ngayDen, rr.ngayDi ");
		builder.append("from com.hotel.model.RentedRoomModel rr, com.hotel.model.CustomerModel c, ");
		builder.append("com.hotel.model.RoomModel r where rr.maKH = c.maKH and r.maPhong = rr.maPhong ");
		builder.append("and rr.trangThai = :trangThai and tenPhong like :tenPhong");
		
		return rentDAO.search(tenPhong, trangThai, builder.toString());
	}
	
	public RoomModel getRoomByID(String maPhong) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r from com.hotel.model.RoomModel r ");
		builder.append("where maPhong = :maPhong");
		
		return rentDAO.getRoomByID(maPhong, builder.toString());
	}
	
//	public int rent(String maPhong, String cmnd) {
//		StringBuilder builder = new StringBuilder();
//		builder.append("insert into com.hotel.model.RentedRoomModel values( ");
//		builder.append("");
//		builder.append("where maPhong = :maPhong");
//		
//		return rentDAO.rent(maPhong, cmnd, builder.toString());
//	}
}
