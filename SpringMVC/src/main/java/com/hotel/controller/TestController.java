
package com.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.model.userModel;
import com.hotel.service.AddService;

/**
 * @author Administrator
 *
 */
@Controller
public class TestController implements ApplicationContextAware {
	
	private static ApplicationContext context;

    public static ApplicationContext getApplicationContext() {
        return context;
    }

    @Override
    public void setApplicationContext(ApplicationContext ac)
            throws BeansException {
        context = ac;
    }

	@RequestMapping("/add")
	public ModelAndView add( @RequestParam("n1") int i,
							 @RequestParam("n2") int j,
							 HttpServletRequest req,
							 HttpServletResponse res) {
		
//		int i = Integer.parseInt(req.getParameter("n1"));
//		int j = Integer.parseInt(req.getParameter("n2"));
		
		
		AddService addService = (AddService) context.getBean("addService");
		int k = addService.add(i, j);
		List<userModel> list = addService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("display");
		mv.addObject("result", k);
		
		return mv;
	}
}
