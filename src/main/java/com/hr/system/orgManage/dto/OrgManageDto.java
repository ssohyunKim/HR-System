package com.hr.system.orgManage.dto;

public class OrgManageDto {
	private String EMP_NO;
	private String PASSWORD;
	private String NAME;
	private String LEVEL;
	private String PHONE;
	private String EMAIL;
	private String ADDRESS;
	private String ADDRESS_DETAIL;
	private String ZIPCODE;
	private String ACCOUNT;
	private String BANK;
	private String DEPT_NO;
	private String CODE;
	private String PDEPT_NO;

	
	public OrgManageDto() {
		
	}
	
	public OrgManageDto(String eMP_NO, String pASSWORD, String nAME, String lEVEL, String pHONE, String eMAIL,
			String aDDRESS, String aDDRESS_DETAIL, String zIPCODE, String aCCOUNT, String bANK) {
		super();
		EMP_NO = eMP_NO;
		PASSWORD = pASSWORD;
		NAME = nAME;
		LEVEL = lEVEL;
		PHONE = pHONE;
		EMAIL = eMAIL;
		ADDRESS = aDDRESS;
		ADDRESS_DETAIL = aDDRESS_DETAIL;
		ZIPCODE = zIPCODE;
		ACCOUNT = aCCOUNT;
		BANK = bANK;
	}
	public String getEMP_NO() {
		return EMP_NO;
	}
	public void setEMP_NO(String eMP_NO) {
		EMP_NO = eMP_NO;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getLEVEL() {
		return LEVEL;
	}
	public void setLEVEL(String lEVEL) {
		LEVEL = lEVEL;
	}
	public String getPHONE() {
		return PHONE;
	}
	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getADDRESS_DETAIL() {
		return ADDRESS_DETAIL;
	}
	public void setADDRESS_DETAIL(String aDDRESS_DETAIL) {
		ADDRESS_DETAIL = aDDRESS_DETAIL;
	}
	public String getZIPCODE() {
		return ZIPCODE;
	}
	public void setZIPCODE(String zIPCODE) {
		ZIPCODE = zIPCODE;
	}
	public String getACCOUNT() {
		return ACCOUNT;
	}
	public void setACCOUNT(String aCCOUNT) {
		ACCOUNT = aCCOUNT;
	}
	public String getBANK() {
		return BANK;
	}
	public void setBANK(String bANK) {
		BANK = bANK;
	}
	
	
	
	
}
