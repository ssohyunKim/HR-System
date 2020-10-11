package com.hr.system.projectwork.dto;

import java.sql.Date;

public class projectworkDto {
	private int pjt_work_no;
	private int pjt_no;
	private Date from_date;
	private Date to_date;
	private String content;
	private int state;
	
	public projectworkDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public projectworkDto(int pjt_work_no, int pjt_no, Date from_date, Date to_date, String content, int state) {
		super();
		this.pjt_work_no = pjt_work_no;
		this.pjt_no = pjt_no;
		this.from_date = from_date;
		this.to_date = to_date;
		this.content = content;
		this.state = state;
	}

	public int getPjt_work_no() {
		return pjt_work_no;
	}

	public void setPjt_work_no(int pjt_work_no) {
		this.pjt_work_no = pjt_work_no;
	}

	public int getPjt_no() {
		return pjt_no;
	}

	public void setPjt_no(int pjt_no) {
		this.pjt_no = pjt_no;
	}

	public Date getFrom_date() {
		return from_date;
	}

	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}

	public Date getTo_date() {
		return to_date;
	}

	public void setTo_date(Date to_date) {
		this.to_date = to_date;
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
		return "projectworkDto [pjt_work_no=" + pjt_work_no + ", pjt_no=" + pjt_no + ", from_date=" + from_date
				+ ", to_date=" + to_date + ", content=" + content + ", state=" + state + "]";
	}
	
	
	
}
