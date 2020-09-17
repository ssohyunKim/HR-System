package com.hr.system.commuteManage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommuteController {
	
	@RequestMapping(value = "/commute/commuteMain.do", method ={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView Insert(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		mav.setViewName("commute/commuteMain");
		return mav;		
	}
}
