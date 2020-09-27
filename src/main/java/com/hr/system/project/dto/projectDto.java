package com.hr.system.project.dto;

import java.sql.Date;

public class projectDto {
	private int pjtNo;
	private String name;
	private Date fromdate;
	private Date todate;
	private String content;
	private int state;
	
	public projectDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public projectDto(int pjtNo, String name, Date fromdate, Date todate, String content, int state) {
		super();
		this.pjtNo = pjtNo;
		this.name = name;
		this.fromdate = fromdate;
		this.todate = todate;
		this.content = content;
		this.state = state;
	}

	public int getPjtNo() {
		return pjtNo;
	}

	public void setPjtNo(int pjtNo) {
		this.pjtNo = pjtNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getFromdate() {
		return fromdate;
	}

	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}

	public Date getTodate() {
		return todate;
	}

	public void setTodate(Date todate) {
		this.todate = todate;
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
		return "projectDto [pjtNo=" + pjtNo + ", name=" + name + ", fromdate=" + fromdate + ", todate=" + todate
				+ ", content=" + content + ", state=" + state + "]";
	}
	
	
	
}
