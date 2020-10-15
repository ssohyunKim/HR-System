package com.hr.system.orgManage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hr.system.orgMange.service.OrgManageService;

@Controller
public class OrganizationController {
	
	@Autowired
	OrgManageService orgManageService;
	
	@RequestMapping(value = "/organization/main.do", method = RequestMethod.GET)
	public ModelAndView Insert(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		mav.setViewName("organization/orgMain");
		return mav;		
	}
	
	@RequestMapping(value = "/organization/main.do/orgSelect", method = RequestMethod.GET)
	public ModelAndView selectList(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		return mav;		
	}
	
	@RequestMapping(value = "/organization/main.do/orgAdd", method = RequestMethod.GET)
	public ModelAndView orgAdd(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		return mav;		
	}
	@RequestMapping(value = "/organization/main.do/orgMod", method = RequestMethod.GET)
	public ModelAndView orgMod(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		return mav;		
	}
	@RequestMapping(value = "/organization/main.do/orgDel", method = RequestMethod.GET)
	public ModelAndView orgDel(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		return mav;		
	}
	
	
}
