package com.hotel.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.hotel.common.Constants;
import com.hotel.dao.RentDAO;
import com.hotel.model.BillModel;
import com.hotel.model.CustomerModel;
import com.hotel.model.RentedRoomModel;

/**
 * @author Tien
 *
 * class RentService
 */
@Service
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
	public List<?> getEmptyRoom() {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r from RoomModel r ");
		builder.append("where trangThai = :trangThai");
		
		return rentDAO.getEmptyRoom(Constants.ROOM_EMPTY, builder.toString());
	}
	
	/**
	 * phuong thuc lay thong tin khach hang dang thue 
	 * 
	 * @param trangThai kieu int
	 * @return
	 */
	public List<?> getRentedInfo() {
    	
		StringBuilder builder = new StringBuilder();
		builder.append("select r from RentedRoomModel r ");
		builder.append("where r.trangThai = :trangThai");
		
    	return rentDAO.getRentedInfo(Constants.RENTING, builder.toString());
    }
	
	public RentedRoomModel getRentedInfoForPay(int maKH, String maPhong) {
    	
		StringBuilder builder = new StringBuilder();
		builder.append("select r from RentedRoomModel r ");
		builder.append("where r.maKH = :maKH and r.maPhong = :maPhong and r.trangThai = :trangThai");
		
    	return rentDAO.getRentedInfoForPay(maKH, maPhong, Constants.RENTING, builder.toString());
    }
	
	public int changeStatus(int flag, String roomID) {
		
		int status = 0;
		
		if (flag == 0) {
			status = changeStatusForRented(roomID, Constants.CHECKED_OUT, Constants.ROOM_EMPTY);
		} else {
			status = changeStatusForReservation(roomID, Constants.CHECKED_OUT, Constants.ROOM_EMPTY);
		}
		
		return status;
	}

	public int changeStatusForRented(String roomID, int trangThaiThue, int trangThaiPhong) {
		
    	StringBuilder builder = new StringBuilder();
		
		builder.append("UPDATE thuephong as rr, phong as r ");
		builder.append("SET rr.TrangThai = :activityStatus, r.TrangThai = :roomStatus ");
		builder.append("WHERE rr.MaPhong = r.MaPhong and rr.MaPhong = :roomID ");
    	
    	return rentDAO.changeStatus(roomID, trangThaiThue, trangThaiPhong, builder.toString());
    }
	
	public int changeStatusForReservation(String roomID, int trangThaiThue, int trangThaiPhong) {
		
    	StringBuilder builder = new StringBuilder();
		
		builder.append("UPDATE datphong as d, phong as r ");
		builder.append("SET d.TrangThai = :activityStatus, r.TrangThai = :roomStatus ");
		builder.append("WHERE d.MaPhong = r.MaPhong and d.MaPhong = :roomID ");
    	
    	return rentDAO.changeStatus(roomID, trangThaiThue, trangThaiPhong, builder.toString());
    }
	
	/**
	 * phuong thuc tim kiem phong
	 * 
	 * @param tenPhong kieu String
	 * @param trangThai kieu int
	 * @return
	 */
	public List<?> searchEmptyRoom(String tenPhong) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r from RoomModel r ");
		builder.append("where r.trangThai = :trangThai and r.tenPhong like :tenPhong");
		
		return rentDAO.search(tenPhong, Constants.ROOM_EMPTY, builder.toString());
	}
	
	public List<?> searchRentedRoom(String tenPhong) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r from RentedRoomModel r ");
		builder.append("where r.trangThai = :trangThai and r.room.tenPhong like :tenPhong");
		
		return rentDAO.search(tenPhong, Constants.RENTING, builder.toString());
	}
	
	public RentedRoomModel getRentedInfoByRoomID(String maPhong) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("select r from RentedRoomModel r ");
		builder.append("where r.trangThai = :trangThai and r.maPhong = :maPhong");
		
		return rentDAO.getRentedInfoByRoomID(maPhong, Constants.RENTING, builder.toString());
	}
	
	public int rent(CustomerModel customer, RentedRoomModel rentedRoomModel) {
		
		StringBuilder builder = new StringBuilder();
		builder.append("insert into thuephong values(");
		builder.append(":maKH,:ngayDen,:ngayDi,:maPhong,:maNV,:trangThai,:ngayThucHien)");
		
		
		rentedRoomModel.setMaKH(customer.getMaKH());
		rentedRoomModel.setNgayThucHien(new Date());

		return rentDAO.rent(rentedRoomModel, builder.toString());
	}
	
	public void addBill(BillModel billModel) {

		rentDAO.addBill(billModel);
	}
}
