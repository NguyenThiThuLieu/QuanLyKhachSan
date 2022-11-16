package com.hotel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.common.Constants;
import com.hotel.model.CustomerModel;
import com.hotel.model.RentedRoomModel;
import com.hotel.model.RoomModel;
import com.hotel.service.RentService;

/**
 * @author Tien
 *
 * class RentController
 */
@Controller
public class RentController{
	
	@Autowired
	private RentService rentService;
    
    /**
     * phuong thuc tra ve view
     * 
     * @return
     */
    @RequestMapping("/Rent")
    public ModelAndView getView() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName(Constants.RENT_VIEW);
    	return mv;
    }
    
    /**
     * phuong thuc lay danh sach phong cho
     * 
     * @return
     */
    @RequestMapping("/Rent/GetEmptyRoom")
    public @ResponseBody List<?> getEmptyRoom() {
    	
    	return rentService.getEmptyRoom(Constants.ROOM_EMPTY);
    }
    
    /**
     * phuong thuc lay thong tin khach hang dang thue phong
     * 
     * @param maPhong kieu String
     * @return
     */
    @RequestMapping("/Rent/GetRentedInfo")
    public @ResponseBody List<?> getRentedInfo() {
    	
    	return rentService.getRentedInfo(Constants.RENTING);
    }
    
    /**
     * phuong thuc tra phong
     * 
     * @param maPhong kieu String
     * @return
     */
    @RequestMapping("/Rent/CheckOut")
    public @ResponseBody int checkOut(@RequestParam(name = "maPhong") String maPhong) {
    		
    	return rentService.changeStatus(maPhong, Constants.CHECKED_OUT, Constants.ROOM_EMPTY);
    }
    
    /**
     * phuong thuc tim kiem phong
     * 
     * @param tenPhong kieu String
     * @return
     */
    @RequestMapping("/Rent/Search")
    public @ResponseBody Object search(@RequestParam(name = "tenPhong") String tenPhong) {
    	
    	List<?> emptyRoomList = rentService.searchEmptyRoom(tenPhong, Constants.ROOM_EMPTY);
    	
    	List<?> rentedRoomList = rentService.searchRentedRoom(tenPhong, Constants.RENTING);
    	
    	Map<Object, Object> map = new HashMap<>();
    	
    	map.put("emptyRoomList", emptyRoomList);
    	map.put("rentedRoomList", rentedRoomList);
    	
    	return map;
    }
    
    @RequestMapping("/Rent/GetRoom")
    public @ResponseBody RoomModel getRoomByID(@RequestParam(name = "maPhong") String maPhong) {
    	
    	return rentService.getRoomByID(maPhong);
    }
    @RequestMapping("/Rent/CancelRenting")
    public @ResponseBody int cancelRenting(@RequestParam(name = "maPhong") String maPhong) {

    	return rentService.changeStatus(maPhong, Constants.CANCELED, Constants.ROOM_EMPTY);
    }
      
    @RequestMapping("/Rent/RentRoom")
    public @ResponseBody int rent(@ModelAttribute("CustomerModel") CustomerModel customer, 
    		@ModelAttribute("RentedRoomModel") RentedRoomModel rentedRoomModel) {

    	return 1;
    }
}
