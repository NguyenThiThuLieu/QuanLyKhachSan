package com.hotel.controller;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.common.Constants;

/**
 * @author Tien
 *
 * class SystemController
 */
/**
 * @author Administrator
 *
 * class SystemController
 */
@Controller

public class SystemController implements ApplicationContextAware {
	
	private static ApplicationContext context;

    public static ApplicationContext getApplicationContext() {
        return context;
    }

    @Override
    public void setApplicationContext(ApplicationContext ac)
            throws BeansException {
        context = ac;
    }
    
    @RequestMapping("/System")
	public ModelAndView system() {
		
		// khoi tao doi tuong ModelAndView
		ModelAndView mv = new ModelAndView();
		
		// set ten view tra ve
		mv.setViewName(Constants.SYSTEM_VIEW);
		
		return mv;
	}
    
    @RequestMapping("/System/Service")
	public ModelAndView service() {
		
		// khoi tao doi tuong ModelAndView
		ModelAndView mv = new ModelAndView();
		
		// set ten view tra ve
		mv.setViewName(Constants.SERVICE_VIEW);
		
		return mv;
	}
}
