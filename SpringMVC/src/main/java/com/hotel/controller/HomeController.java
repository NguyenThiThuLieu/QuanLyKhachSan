package com.hotel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.common.Constants;
import com.hotel.service.HomeService;

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

	@RequestMapping("/Home")
	public ModelAndView add( HttpServletRequest req,
							 HttpServletResponse res) {	
		
		HomeService homeService = (HomeService) context.getBean("homeService");
		
		long numOfRentedInDay = homeService.GetNumOfRentedInDay();
		long numOfEmtyRoom = homeService.GetNumOfByStatus(Constants.ROOM_EMPTY);
		long numOfRentedRoom = homeService.GetNumOfByStatus(Constants.ROOM_RENTED);
		long numOfRoomNeedClean = homeService.GetNumOfByStatus(Constants.ROOM_CLEAN);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home");
		mv.addObject("numOfRentedInDay", numOfRentedInDay);
		mv.addObject("numOfEmtyRoom", numOfEmtyRoom);
		mv.addObject("numOfRentedRoom", numOfRentedRoom);
		mv.addObject("numOfRoomNeedClean", numOfRoomNeedClean);
		
		return mv;
	}
}
