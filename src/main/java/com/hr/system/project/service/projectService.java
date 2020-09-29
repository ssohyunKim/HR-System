package com.hr.system.project.service;

import org.springframework.web.servlet.ModelAndView;

public interface projectService {

	void projectWrite(ModelAndView mav, String id);

	void projectAutocomplete(ModelAndView mav);

	void projectAutocomplete2(ModelAndView mav);
	
}
