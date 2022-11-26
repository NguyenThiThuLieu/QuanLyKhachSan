package com.hotel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.common.Constants;
import com.hotel.model.CustomerModel;
import com.hotel.model.EmployeeModel;
import com.hotel.model.RoomModel;
import com.hotel.service.CustomerService;
import com.hotel.service.EmployeeService;
import com.hotel.service.RentService;
import com.hotel.service.RoomService;

@Controller
@RequestMapping
public class EmployeeController {
	
	@Autowired
	public EmployeeService employeeService;
	
	 @RequestMapping("/Employee/getAllEmployee")
	    public @ResponseBody List<EmployeeModel> getAllEmployee() {
	    	
	    	return employeeService.getAllEmployee();
	    }
		
	
	@RequestMapping(value = "/Employee/Add", method = RequestMethod.POST)
	public @ResponseBody Object addEmployee(@ModelAttribute("EmployeeModel") EmployeeModel employee) {

		// khai bao bien kiem tra co loi khong
		boolean error = false;

		// lay danh sach tat ca khách hàng
		List<EmployeeModel> employeeList = employeeService.getAllEmployee();

		// kiem tra khach hang do co ton tai khong, neu co tra ve loi
		if (!employeeService.containEmployee(employeeList, employee)) {
			employeeService.addEmployee(employee);
		} else {
			error = true;
		}

//		// lay danh sach tat ca nhan vien
		employeeList = employeeService.getAllEmployee();
		
		// khoi tao doi tuong Map
		Map<Object, Object> map = new HashMap<>();
		
		// put cac doi tuong vao map
		map.put("employeeList", employeeList);
		map.put("error", error);

		return map;
	}
	
 @RequestMapping("/Employee/GetEmployee")
    public @ResponseBody EmployeeModel getEmployee(@RequestParam(value = "maNV") String maNV) {
    	    	
    	return employeeService.getEmployee(maNV);
    }
// Search
	@RequestMapping(value = "/Employee/Search", method = RequestMethod.GET)
	public @ResponseBody Object search(
			@RequestParam(name = "searchString") String searchString) {
		

		// lay danh sach phong theo ten
		List<EmployeeModel> employeeList = employeeService.getEmployeeByMaNV(searchString);
		Map<Object, Object> map = new HashMap<>();
		
		// put cac doi tuong vao map
		map.put("employeeList", employeeList);

		return map;
	}


	@RequestMapping(value = "/Employee", method = RequestMethod.GET)
	public ModelAndView employee() {
		
		List<EmployeeModel> list = new ArrayList<>();
		list = employeeService.getAllEmployee();

		// khoi tao doi tuong ModelAndView
		ModelAndView mv = new ModelAndView();

		// set ten view tra ve
		mv.setViewName("Member");

		// them cac du lieu can truyen xuong view
		mv.addObject("listEmployee", list);
		return mv;
	}

	@RequestMapping(value = "/Employee/Edit", method = RequestMethod.POST)
	public @ResponseBody Object editEmployee(@ModelAttribute("EmployeeModel") EmployeeModel employee) {

		// thuc hien chinh sua nhan vien
		employeeService.editEmployee(employee);

		// lay danh sach tat ca nhan vien
		List<EmployeeModel> employeeList = employeeService.getAllEmployee();

		// khoi tao doi tuong Map
		Map<Object, Object> map = new HashMap<>();
		
		// put cac doi tuong vao map
		map.put("employeeList", employeeList);

		return map;
	}


}
