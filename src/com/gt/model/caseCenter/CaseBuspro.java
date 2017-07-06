package com.gt.model.caseCenter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_case_buspro")
@org.hibernate.annotations.Table(appliesTo = "t_ws_case_buspro", comment = "客户案例修改内容")
public class CaseBuspro {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "centerid", columnDefinition = "int(11) DEFAULT NULL COMMENT 'center id'")
	private Integer centerid;
	
	@Column(name = "proname", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '项目名'")
	private String proname = "";
	
	@Column(name = "description", columnDefinition = "varchar(1000) DEFAULT NULL COMMENT '描述'")
	private String description = "";
	
	@Column(name = "pics", columnDefinition = "varchar(1000) DEFAULT NULL COMMENT '图片(用(#)分割)'")
	private String pics = "";

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCenterid() {
		return centerid;
	}

	public void setCenterid(Integer centerid) {
		this.centerid = centerid;
	}

	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPics() {
		return pics;
	}

	public void setPics(String pics) {
		this.pics = pics;
	}

	@Override
	public String toString() {
		return "CaseBuspro [id=" + id + ", centerid=" + centerid + ", proname=" + proname + ", description="
				+ description + ", pics=" + pics + "]";
	}
	
}
