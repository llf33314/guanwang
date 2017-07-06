package com.gt.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TWsCaseDetail entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "t_ws_case_detail", catalog = "website")
public class TWsCaseDetail implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer caseMainId;
	private String detailName;
	private String detailMainImg;
	private String detailOtherImg;
	private String detailDes;
	private Integer detailStatus;
	private Date createTime;
	private String createName;

	// Constructors

	/** default constructor */
	public TWsCaseDetail() {
	}

	/** full constructor */
	public TWsCaseDetail(Integer caseMainId, String detailName,
			String detailMainImg, String detailOtherImg, String detailDes,
			Integer detailStatus, Date createTime, String createName) {
		this.caseMainId = caseMainId;
		this.detailName = detailName;
		this.detailMainImg = detailMainImg;
		this.detailOtherImg = detailOtherImg;
		this.detailDes = detailDes;
		this.detailStatus = detailStatus;
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

	@Column(name = "case_main_id")
	public Integer getCaseMainId() {
		return this.caseMainId;
	}

	public void setCaseMainId(Integer caseMainId) {
		this.caseMainId = caseMainId;
	}

	@Column(name = "detail_name", length = 200)
	public String getDetailName() {
		return this.detailName;
	}

	public void setDetailName(String detailName) {
		this.detailName = detailName;
	}

	@Column(name = "detail_main_img", length = 1000)
	public String getDetailMainImg() {
		return this.detailMainImg;
	}

	public void setDetailMainImg(String detailMainImg) {
		this.detailMainImg = detailMainImg;
	}

	@Column(name = "detail_other_img", length = 1000)
	public String getDetailOtherImg() {
		return this.detailOtherImg;
	}

	public void setDetailOtherImg(String detailOtherImg) {
		this.detailOtherImg = detailOtherImg;
	}

	@Column(name = "detail_des", length = 500)
	public String getDetailDes() {
		return this.detailDes;
	}

	public void setDetailDes(String detailDes) {
		this.detailDes = detailDes;
	}

	@Column(name = "detail_status")
	public Integer getDetailStatus() {
		return this.detailStatus;
	}

	public void setDetailStatus(Integer detailStatus) {
		this.detailStatus = detailStatus;
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