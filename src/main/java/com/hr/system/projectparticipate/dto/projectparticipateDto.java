package com.hr.system.projectparticipate.dto;

public class projectparticipateDto {
	private int pjt_par_no;
	private int pjt_no;
	private int emp_no;
	
	
	
	public projectparticipateDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public projectparticipateDto(int pjt_par_no, int pjt_no, int emp_no) {
		super();
		this.pjt_par_no = pjt_par_no;
		this.pjt_no = pjt_no;
		this.emp_no = emp_no;
	}



	public int getPjt_par_no() {
		return pjt_par_no;
	}



	public void setPjt_par_no(int pjt_par_no) {
		this.pjt_par_no = pjt_par_no;
	}



	public int getPjt_no() {
		return pjt_no;
	}



	public void setPjt_no(int pjt_no) {
		this.pjt_no = pjt_no;
	}



	public int getEmp_no() {
		return emp_no;
	}



	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}



	@Override
	public String toString() {
		return "projectparticipateDto [pjt_par_no=" + pjt_par_no + ", pjt_no=" + pjt_no + ", emp_no=" + emp_no + "]";
	}
	
	
	
}
