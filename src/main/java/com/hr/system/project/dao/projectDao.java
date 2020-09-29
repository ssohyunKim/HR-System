package com.hr.system.project.dao;

import java.util.List;

import com.hr.system.project.dto.projectDto;

public interface projectDao {

	List<String> autoComplete(String name);
	
	List<Integer> autoComplete2(String name);

}
