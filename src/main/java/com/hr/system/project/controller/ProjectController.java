package com.hr.system.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hr.system.project.dto.projectDto;
import com.hr.system.project.service.projectService;

@Controller
public class projectController {
	@Autowired
	private projectService projectservice;
	
	@RequestMapping(value="/project/project.do", method=RequestMethod.GET)
	public ModelAndView Project(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		
		return mav;
	}
	@RequestMapping(value="/project/projectWrite.do", method=RequestMethod.GET)
	public ModelAndView ProjectWrite(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		//session으로 id 넘기기
		//HttpSession session = request.getSession();
		//String id = (String)session.getAttribute("id");
		String id = "team";
		projectservice.projectWrite(mav, id);
		return mav;
	}
	
	@RequestMapping(value="/project/projectContent.do", method=RequestMethod.GET)
	public ModelAndView ProjectContent(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request", request);
		
		return mav;
	}
	
	

	@RequestMapping(value = "/project/autocomplete.do", method = RequestMethod.POST)
	 public void AutoTest(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response, projectDto dto) throws IOException{
	 String name = request.getParameter("term");
	 ModelAndView mav = new ModelAndView();
	 mav.addObject("request", request);
	 mav.addObject("name", name);
	 
	 projectservice.projectAutocomplete(mav);
	 projectservice.projectAutocomplete2(mav);
	  List<String> list = (List)mav.getModel().get("list");
	  List<Integer> list2 = (List)mav.getModel().get("list2");
	 
	 JSONArray ja = new JSONArray();
	 for (int i = 0; i < list.size(); i++) {
		 ja.add(list.get(i) + " (사원번호 : " + Integer.toString(list2.get(i)) + ")");
	 }
	
	 PrintWriter out = response.getWriter();	 
	 out.print(ja.toString()); 
	 }
	
}
