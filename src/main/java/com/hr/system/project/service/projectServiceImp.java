package com.hr.system.project.service;

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
}
