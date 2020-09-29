package com.hr.system.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hr.system.project.dto.projectDto;

@Component
public class projectDaoImp implements projectDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//사원이름
	@Override
	public List<String> autoComplete(String name) {
		return sqlSessionTemplate.selectList("project_auto", name);
	}
	
	//사원번호
	@Override
	public List<Integer> autoComplete2(String name) {
		return sqlSessionTemplate.selectList("project_auto2", name);
	}
	
}
