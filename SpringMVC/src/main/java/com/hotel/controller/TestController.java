
package com.hotel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.service.AddService;

/**
 * @author Administrator
 *
 */
@Controller
public class TestController {
	
	@RequestMapping("/add")
	public ModelAndView add( @RequestParam("n1") int i,
							 @RequestParam("n2") int j,
							 HttpServletRequest req,
							 HttpServletResponse res) {
		
//		int i = Integer.parseInt(req.getParameter("n1"));
//		int j = Integer.parseInt(req.getParameter("n2"));
		
		AddService addService = new AddService();
		int k = addService.add(i, j);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("display");
		mv.addObject("result", k);
		
		return mv;
	}
}
