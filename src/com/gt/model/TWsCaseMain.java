package com.gt.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TWsCaseMain entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_ws_case_main", catalog = "website")
public class TWsCaseMain implements java.io.Serializable {

	// Fields

	private Integer id;
	private String caseCode;
	private String caseName;
	private String caseExplain;
	private Integer caseStatus;
	private String caseRemark;
	private Date createTime;
	private String createName;

	// Constructors

	/** default constructor */
	public TWsCaseMain() {
	}

	/** full constructor */
	public TWsCaseMain(String caseCode, String caseName, String caseExplain,
			Integer caseStatus, String caseRemark, Date createTime,
			String createName) {
		this.caseCode = caseCode;
		this.caseName = caseName;
		this.caseExplain = caseExplain;
		this.caseStatus = caseStatus;
		this.caseRemark = caseRemark;
		this.createTime = createTime;
		this.createName = createName;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "case_code", length = 50)
	public String getCaseCode() {
		return this.caseCode;
	}

	public void setCaseCode(String caseCode) {
		this.caseCode = caseCode;
	}

	@Column(name = "case_name", length = 300)
	public String getCaseName() {
		return this.caseName;
	}

	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}

	@Column(name = "case_explain", length = 1000)
	public String getCaseExplain() {
		return this.caseExplain;
	}

	public void setCaseExplain(String caseExplain) {
		this.caseExplain = caseExplain;
	}

	@Column(name = "case_status")
	public Integer getCaseStatus() {
		return this.caseStatus;
	}

	public void setCaseStatus(Integer caseStatus) {
		this.caseStatus = caseStatus;
	}

	@Column(name = "case_remark", length = 500)
	public String getCaseRemark() {
		return this.caseRemark;
	}

	public void setCaseRemark(String caseRemark) {
		this.caseRemark = caseRemark;
	}

	@Column(name = "create_time", length = 19)
	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name = "create_name", length = 200)
	public String getCreateName() {
		return this.createName;
	}

	public void setCreateName(String createName) {
		this.createName = createName;
	}

}