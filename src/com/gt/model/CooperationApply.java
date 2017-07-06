package com.gt.model;

public class CooperationApply {

	private int id;
	
	private String cooName;
	
	private String cooPhone;

	private String cooEmail;
	
	private String cooQQ;
	
	private String cooCompany;
	
	private String cooAddress;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCooName() {
		return cooName;
	}

	public void setCooName(String cooName) {
		this.cooName = cooName;
	}

	public String getCooPhone() {
		return cooPhone;
	}

	public void setCooPhone(String cooPhone) {
		this.cooPhone = cooPhone;
	}

	public String getCooEmail() {
		return cooEmail;
	}

	public void setCooEmail(String cooEmail) {
		this.cooEmail = cooEmail;
	}

	public String getCooQQ() {
		return cooQQ;
	}

	public void setCooQQ(String cooQQ) {
		this.cooQQ = cooQQ;
	}

	public String getCooCompany() {
		return cooCompany;
	}

	public void setCooCompany(String cooCompany) {
		this.cooCompany = cooCompany;
	}

	public String getCooAddress() {
		return cooAddress;
	}

	public void setCooAddress(String cooAddress) {
		this.cooAddress = cooAddress;
	}

	public CooperationApply(int id, String cooName, String cooPhone,
			String cooEmail, String cooQQ, String cooCompany, String cooAddress) {
		super();
		this.id = id;
		this.cooName = cooName;
		this.cooPhone = cooPhone;
		this.cooEmail = cooEmail;
		this.cooQQ = cooQQ;
		this.cooCompany = cooCompany;
		this.cooAddress = cooAddress;
	}

	public CooperationApply() {
		super();
	}

	public CooperationApply(int id) {
		super();
		this.id = id;
	}
	
	
}
