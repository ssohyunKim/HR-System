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
	
	@Override
	public void autoComplete(String name) {
		//System.out.println(name);
		String ho = sqlSessionTemplate.selectOne("project_auto", name);
		System.out.println(ho);
		
		
		
	}
	
}
