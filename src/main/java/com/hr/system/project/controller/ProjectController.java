package com.hr.system.project.controller;

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
	
	/*
	 * //스프링 컨트롤러 부분
	 * 
	 * @RequestMapping(value = "/project/json.do", method = RequestMethod.GET,
	 * produces="text/plain;charset=UTF-8")
	 * 
	 * @ResponseBody public String json(Locale locale, Model model) {
	 * System.out.println("OK"); String[] array = {"신라면", "진라면", "라볶이",
	 * "팥빙수","너구리","삼양라면","안성탕면","불닭볶음면","짜왕","라면사리"};
	 * 
	 * Gson gson = new Gson();
	 * 
	 * return
	 * gson.toJson(array);//["김치 볶음밥","신라면","진라면","라볶이","팥빙수","너구리","삼양라면","안성탕면",
	 * "불닭볶음면","짜왕","라면사리"] }
	 */

	@RequestMapping(value = "/project/autocomplete.do", method = RequestMethod.POST)
	 public void AutoTest(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response, projectDto dto){
	 String name = request.getParameter("term");
			 //System.out.println(result);
	ModelAndView mav = new ModelAndView();
	 mav.addObject("request", request);
	 //System.out.println(name);
	 mav.addObject("name", name);
	 
	 projectservice.projectAutocomplete(mav);
	 //mav.addObject("projectDto", dto);
	//System.out.println(result);
	// projectservice.projectAutocomplete(mav);
	// String result = request.getParameter("term");
	 
//	 List list = 
	// List list = dao.listAll2(result); //result값이 포함되어 있는 emp테이블의 네임을 리턴
	 //DB
	 
//	 JSONArray ja = new JSONArray();
//	 for (int i = 0; i < list.size(); i++) {
//		 ja.add(list.get(i).getEname());
//	 }
	 
	// PrintWriter out = resp.getWriter();
	 
	// out.print(ja.toString());
	 
	 }
	
}
