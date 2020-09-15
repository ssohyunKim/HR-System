package com.hr.system.employee.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hr.system.employee.service.EmployeeService;

@Controller
public class EmployeeController {
	private EmployeeService employeeService;
	
	public EmployeeController() {}

	public EmployeeController(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}

	public void setCustomerServicee(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	
	@RequestMapping(value = "/manage/resource.do", method = RequestMethod.GET)
	public ModelAndView manageResource(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		
		return mav;		
	}

	@RequestMapping(value = "/manage/salary.do", method = RequestMethod.GET)
	public ModelAndView manageSalary(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		
		return mav;		
	}
}
