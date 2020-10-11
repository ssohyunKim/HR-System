package com.hr.system.project.service;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import com.hr.system.project.dao.projectDao;
import com.hr.system.project.dto.projectDto;

@Component
public class projectServiceImp implements projectService {
	@Autowired
	private projectDao projectDao;
	
	@Override
	public void projectWrite(ModelAndView mav, String id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		//System.out.println(id);
		
		mav.addObject("id", id);
		mav.setViewName("project/projectWrite");
	}
	
	@Override
	public void projectAutocomplete(ModelAndView mav) {
		Map<String, Object>  map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String name = (String)map.get("name");
		//System.out.println(name);
		List<String> list = projectDao.autoComplete(name);
		mav.addObject("list", list);

	}
	
	@Override
	public void projectAutocomplete2(ModelAndView mav) {
		Map<String, Object>  map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String name = (String)map.get("name");
		List<Integer> list2 = projectDao.autoComplete2(name);
		mav.addObject("list2", list2);	
	}
	
	@Override
	public void projectWriteOk(ModelAndView mav) {
		Map<String, Object> map = mav.getModel();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		projectDto projectDto = (projectDto)map.get("projectDto");
		
		String proName = request.getParameter("proName");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String fromDate = request.getParameter("fromDate"); 
		String toDate = request.getParameter("toDate"); 

		String searchInput = request.getParameter("searchInput");
		String [] arr = searchInput.split(",");
		
		String content = request.getParameter("content");
		int idx1 = 0;
		int idx2 = 0;
		int empno;
		for(int i=0; i<arr.length-1; i++) {
			for(int j=0; j<arr[i].length(); j++) {
				 if(arr[i].charAt(j)==':') {
					 idx1 = j+1;
				 }
				 if(arr[i].charAt(j)==')') {
					 idx2 = j;
				 }
			}
			empno = Integer.parseInt(arr[i].substring(idx1+1, idx2));
		}
			
		/*
		 * projectDto.setName(proName); projectDto.setContent(content);
		 * projectDto.setState(0);
		 */
		//date넘기기
		
		
		
	}
}
