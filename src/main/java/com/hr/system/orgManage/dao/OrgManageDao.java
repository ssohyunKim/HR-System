package com.hr.system.orgManage.dao;

import java.util.List;

import com.hr.system.orgManage.dto.OrgManageDto;

public interface OrgManageDao {
		public int orgInsert(OrgManageDto orDto);
		public int orgMod(OrgManageDto orDto);
		public String orgDel(int emp_no);
		public List<String> orgList(int emp_no,int level);
		
}
