package com.hr.system.project.dto;

import java.sql.Date;

public class projectDto {
	private int pjt_No;
	private String name;
	private Date from_date;
	private Date to_date;
	private String content;
	private int state;
	
	public projectDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public projectDto(int pjtNo, String name, Date fromdate, Date todate, String content, int state) {
		super();
		this.pjt_No = pjtNo;
		this.name = name;
		this.from_date = fromdate;
		this.to_date = todate;
		this.content = content;
		this.state = state;
	}

	public int getPjtNo() {
		return pjt_No;
	}

	public void setPjtNo(int pjtNo) {
		this.pjt_No = pjtNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getFromdate() {
		return from_date;
	}

	public void setFromdate(Date fromdate) {
		this.from_date = fromdate;
	}

	public Date getTodate() {
		return to_date;
	}

	public void setTodate(Date todate) {
		this.to_date = todate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "projectDto [pjtNo=" + pjt_No + ", name=" + name + ", fromdate=" + from_date + ", todate=" + to_date
				+ ", content=" + content + ", state=" + state + "]";
	}
	
	
	
}
