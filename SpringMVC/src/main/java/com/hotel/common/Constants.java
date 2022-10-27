package com.hotel.common;

/**
 * @author Tien
 * 
 * class Constants
 */
public class Constants {
	
	// Trang thai phong
	public static int ROOM_EMPTY = 0;
	public static int ROOM_RENTED = 1;
	public static int ROOM_CLEAN = 2;
	
	// Trang thai thue phong
	public static int RENTING = 0;
	public static int CHECKED_OUT = 1;
	public static int CANCELED = 2;
	
	// So records trên 1 page
	public static int NUM_RECORD = 5;
	
	// chuoi rong
	public static String EMPTY_STRING = "";
	
	// symbol
	public static String PERCENT_SYMBOL = "%";
	
	// Loai phong
	public static String SINGLE_ROOM = "P9";
	public static String DOUBLE_ROOM = "P1";
	public static String SINGLE_ROOM_TEXT = "Phòng đơn";
	public static String DOUBLE_ROOM_TEXT = "Phòng đôi";
	public static String VIP_ROOM_TEXT = "Phòng VIP";
	
	// service
	public static String HOME_SERVICE ="homeService";
	public static String ROOM_SERVICE = "roomService";
	public static String RENT_SERVICE ="rentService";
	
	// view
	public static String HOME_VIEW = "Home";
	public static String RENT_VIEW = "Room";
}
