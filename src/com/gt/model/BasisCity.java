package com.gt.model;

// Generated 2015-9-6 14:18:12 by Hibernate Tools 3.4.0.CR1


/**
 * BasisCity generated by hbm2java
 */
public class BasisCity implements java.io.Serializable {

	private Integer id;
	private String cityCode;
	private String cityName;
	private int cityParent;
	private int cityLevel;
	public BasisCity() {
	}

	public BasisCity(String cityName, int cityParent) {
		this.cityName = cityName;
		this.cityParent = cityParent;
	}

	public BasisCity(String cityCode, String cityName, int cityParent) {
		this.cityCode = cityCode;
		this.cityName = cityName;
		this.cityParent = cityParent;
	}
	
	

	public BasisCity(Integer id, String cityCode, String cityName,
			int cityParent, int cityLevel) {
		super();
		this.id = id;
		this.cityCode = cityCode;
		this.cityName = cityName;
		this.cityParent = cityParent;
		this.cityLevel = cityLevel;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCityCode() {
		return this.cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getCityName() {
		return this.cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public int getCityParent() {
		return this.cityParent;
	}

	public void setCityParent(int cityParent) {
		this.cityParent = cityParent;
	}
	public int getCityLevel() {
		return cityLevel;
	}

	public void setCityLevel(int cityLevel) {
		this.cityLevel = cityLevel;
	}

	
}
