package com.hotel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.model.RoomModel;
import com.hotel.service.RoomService;

/**
 * @author Tien
 *
 * class RoomController
 */
@Controller
public class RoomController implements ApplicationContextAware {
	
	private static ApplicationContext context;

    public static ApplicationContext getApplicationContext() {
        return context;
    }

    @Override
    public void setApplicationContext(ApplicationContext ac)
            throws BeansException {
        context = ac;
    }
	
    @RequestMapping("/Room")
	public ModelAndView getAllRoomView() {
		
    	RoomService roomService = (RoomService) context.getBean("roomService");
    			 
    	List<RoomModel> roomList = roomService.getAllRoom();
    	
		// khoi tao doi tuong ModelAndView
		ModelAndView mv = new ModelAndView();
		
		// set ten view tra ve
		mv.setViewName("RoomManage");
		
		mv.addObject("roomList", roomList);
		
		return mv;
	}
    
    @RequestMapping("/Room/GetAllRoom")
	public @ResponseBody List<RoomModel> getAllRoom() {
		
    	RoomService roomService = (RoomService) context.getBean("roomService");
    			 
    	List<RoomModel> roomList = roomService.getAllRoom();
		
		return roomList;
	}
    
    @RequestMapping(value = "/Room/Search",
    		method = RequestMethod.GET)
	public @ResponseBody List<RoomModel> getRoomByName(@RequestParam(name = "searchString") String searchString) {
		
    	RoomService roomService = (RoomService) context.getBean("roomService");
    			 
    	List<RoomModel> roomList = roomService.getRoomByName(searchString);
		
		return roomList;
	}
    
	@RequestMapping(value = "/Room/Add", method = RequestMethod.POST)
	public @ResponseBody Object addRoom(@ModelAttribute("RoomModel") RoomModel room) {
		
		RoomService roomService = (RoomService) context.getBean("roomService");
		
		boolean error = false;

		List<RoomModel> roomList = roomService.getAllRoom();
		
		if (!roomService.containRoom(roomList, room)) {
			roomService.addRoom(room);
		} else {
			error = true;
		}
		
		roomList = roomService.getAllRoom();
		
		Map<Object, Object> map = new HashMap<>();
		
		map.put("roomList", roomList);
		map.put("error", error);

		return map;
	}
    
    @RequestMapping(value = "/Room/Remove",
    		method = RequestMethod.POST)
    public @ResponseBody List<RoomModel> removeRoom(@RequestParam(name = "maPhong") String maPhong) {
    	
    	RoomService roomService = (RoomService) context.getBean("roomService");
    	
    	roomService.removeRoom(maPhong);
    	
    	List<RoomModel> roomList = roomService.getAllRoom();
    	
    	return roomList;
    }
    
    @RequestMapping(value = "/Room/GetRoom",
    		method = RequestMethod.GET)
    public @ResponseBody RoomModel getRoom(@RequestParam(name = "maPhong") String maPhong) {
    	RoomService roomService = (RoomService) context.getBean("roomService");
    	return roomService.getRoom(maPhong);
    }
    
    @RequestMapping(value = "/Room/Edit",
    		method = RequestMethod.POST)
    public @ResponseBody List<RoomModel> editRoom(@ModelAttribute("RoomModel") RoomModel room) {
    	
    	RoomService roomService = (RoomService) context.getBean("roomService");
    	
    	roomService.editRoom(room);
    	
    	List<RoomModel> roomList = roomService.getAllRoom();
    	
    	return roomList;
    }
}
