package com.hr.system.assessManage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AssessController {
	
	@RequestMapping(value = "/assess/assessMain.do", method ={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Insert(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		mav.setViewName("assess/assessMain");
		return mav;		
	}
	
	@RequestMapping(value = "/assess/assessMain_add")
	public String add(HttpServletRequest request, HttpServletResponse response) {
		return "assess/assessMain_add";		
	}
	
	@RequestMapping(value = "/assess/assessMain_search")
	public String add1(HttpServletRequest request, HttpServletResponse response) {
		return "assess/assessMain_search";		
	}
	
	@RequestMapping(value = "/assess/assessMain_update")
	public String add2(HttpServletRequest request, HttpServletResponse response) {
		return "assess/assessMain_update";		
	}
	
	@RequestMapping(value = "/assess/assessMain_delete")
	public String add3(HttpServletRequest request, HttpServletResponse response) {
		return "assess/assessMain_delete";		
	}
}
