package com.hr.system.employee.dto;

import java.sql.Date;

public class employeeDto {
	private int empNo;
	private String password;
	private String name;
	private String level;
	private int phone;
	private String email;
	private String address;
	private String address_detail;
	private int zipcode;
	private int account;
	private int bank;
	
	
	
	public employeeDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public employeeDto(int empNo, String password, String name, String level, int phone, String email, String address,
			String address_detail, int zipcode, int account, int bank) {
		super();
		this.empNo = empNo;
		this.password = password;
		this.name = name;
		this.level = level;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.address_detail = address_detail;
		this.zipcode = zipcode;
		this.account = account;
		this.bank = bank;
	}



	public int getEmpNo() {
		return empNo;
	}



	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getLevel() {
		return level;
	}



	public void setLevel(String level) {
		this.level = level;
	}



	public int getPhone() {
		return phone;
	}



	public void setPhone(int phone) {
		this.phone = phone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getAddress_detail() {
		return address_detail;
	}



	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}



	public int getZipcode() {
		return zipcode;
	}



	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}



	public int getAccount() {
		return account;
	}



	public void setAccount(int account) {
		this.account = account;
	}



	public int getBank() {
		return bank;
	}



	public void setBank(int bank) {
		this.bank = bank;
	}



	@Override
	public String toString() {
		return "employeeDto [empNo=" + empNo + ", password=" + password + ", name=" + name + ", level=" + level
				+ ", phone=" + phone + ", email=" + email + ", address=" + address + ", address_detail="
				+ address_detail + ", zipcode=" + zipcode + ", account=" + account + ", bank=" + bank + "]";
	}
	
	
	
	
	

}
