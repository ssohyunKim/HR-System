package com.hr.system.orgMange.service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.hr.system.orgManage.dto.OrgManageDto;

public interface OrgManageService {

	public int orgInsert(OrgManageDto orgDto);
	public int orgMod(OrgManageDto orgDto);
	public int orgDel(OrgManageDto orgDto);
	public void empList(ModelAndView mav);
}
