package com.hr.system.orgManage.dao;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import com.hr.system.orgManage.dto.OrgManageDto;

public class orgManageDaoImp implements OrgManageDao {

	SqlSessionTemplate session;
	
	@Override
	public int orgInsert(OrgManageDto orDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int orgMod(OrgManageDto orDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String orgDel(int emp_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> orgList(int emp_no, int level) {
		// TODO Auto-generated method stub
		return null;
	}

}
