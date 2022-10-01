package com.hotel.service;

import java.util.Date;

import com.hotel.dao.HomeDAO;

public class HomeService {
	private HomeDAO homeDAO;

	public HomeDAO getHomeDAO() {
		return homeDAO;
	}

	public void setHomeDAO(HomeDAO homeDAO) {
		this.homeDAO = homeDAO;
	}
	
	/**
	 * phuong thuc lay so phong thue trong ngay
	 * 
	 * @param now
	 * @return numOfRentedRoom kieu long
	 */
	private long GetNumOfRentedRoomInDay(Date now) {
		
		// khoi tao doi tuong builder kieu StringBuilder
		StringBuilder builder = new StringBuilder();
		
		// thiet lap cau truy van sql
		builder.append("select count(r) from com.hotel.model.RentedRoomModel r ");
		builder.append("where CONVERT(ngayThucHien, DATE) = CONVERT(:now, DATE)");
		
		// lay so phong thue trong ngay
		long numOfRentedRoom = homeDAO.GetNumOfRoom(now, builder.toString());
		
		return numOfRentedRoom;
	}
	
	/**
	 * phuong thuc lay so phong dat trong ngay
	 * 
	 * @param now
	 * @return numOfReservationRoom kieu long
	 */
	private long GetNumOfReservationRoomInDay(Date now) {
		
		// khoi tao doi tuong builder kieu StringBuilder
		StringBuilder builder = new StringBuilder();
		
		// thiet lap cau truy van sql
		builder.append("select count(r) from com.hotel.model.ReservationRoomModel r ");
		builder.append("where CONVERT(r.ngayThucHien, DATE) = CONVERT(:now, DATE)");
		
		// lay so phong dat trong ngay
		long numOfReservationRoom = homeDAO.GetNumOfRoom(now, builder.toString());
		
		return numOfReservationRoom;
	}
	
	/**
	 * phuong thuc lay so phong thue trong ngay
	 * (bao gom phong thue va dat)
	 * 
	 * @return numOfRentedInDay kieu long
	 */
	public long GetNumOfRentedInDay() {
		
		// lay ngay hien tai
		Date now = new Date();
		
		// lay so phong thue trong ngay
		long numOfRentedRoom = GetNumOfRentedRoomInDay(now);
		
		// lay so phong dat trong ngay
		long numOfReservationRoom = GetNumOfReservationRoomInDay(now);
		
		// lay so phong thue trong ngay (bao gom phong thue va dat)
		long numOfRentedInDay = numOfRentedRoom + numOfReservationRoom;
		
		return numOfRentedInDay;
	}
	
	public long GetNumOfByStatus(int status) {
		
		// khoi tao doi tuong builder kieu StringBuilder
		StringBuilder builder = new StringBuilder();

		// thiet lap cau truy van sql
		builder.append("select count(r) from com.hotel.model.RoomModel r ");
		builder.append("where r.trangThai = :trangThai");

		// lay so phong dat trong ngay
		long numOfEmtyRoom = homeDAO.GetNumOfRoomByStatus(builder.toString(), status);
		
		return numOfEmtyRoom;
	}
}

