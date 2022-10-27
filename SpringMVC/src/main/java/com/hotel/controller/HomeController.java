package com.hotel.controller;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.common.Constants;
import com.hotel.service.HomeService;

/**
 * @author Tien
 * 
 * class HomeController
 */
@Controller
public class HomeController implements ApplicationContextAware {
	
	private static ApplicationContext context;

    public static ApplicationContext getApplicationContext() {
        return context;
    }

    @Override
    public void setApplicationContext(ApplicationContext ac)
            throws BeansException {
        context = ac;
    }

	/**
	 * phuong thuc tra ve trang chu
	 * 
	 * @return mv kieu ModelAndView
	 */
	@RequestMapping("/Home")
	public ModelAndView home() {	
		
		// get HomeService from ApplicationContext
		HomeService homeService = (HomeService) context.getBean(Constants.HOME_SERVICE);
		
		// lay so luong phong thue trong ngay
		long numOfRentedInDay = homeService.getNumOfRentedInDay();
		
		// lay so luong phong cho
		long numOfEmtyRoom = homeService.getNumOfByStatus(Constants.ROOM_EMPTY);
		
		// lay so luong phong dang thue
		long numOfRentedRoom = homeService.getNumOfByStatus(Constants.ROOM_RENTED);
		
		// lay so luong phong can don
		long numOfRoomNeedClean = homeService.getNumOfByStatus(Constants.ROOM_CLEAN);
		
		// khoi tao doi tuong ModelAndView
		ModelAndView mv = new ModelAndView();
		
		// set ten view tra ve
		mv.setViewName(Constants.HOME_VIEW);
		
		// them cac du lieu can truyen xuong view
		mv.addObject("numOfRentedInDay", numOfRentedInDay);
		mv.addObject("numOfEmtyRoom", numOfEmtyRoom);
		mv.addObject("numOfRentedRoom", numOfRentedRoom);
		mv.addObject("numOfRoomNeedClean", numOfRoomNeedClean);
		
		return mv;
	}
}
