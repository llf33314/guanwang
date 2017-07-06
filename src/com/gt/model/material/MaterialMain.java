package com.gt.model.material;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_meterial_main")
@org.hibernate.annotations.Table(appliesTo = "t_ws_meterial_main", comment = "多粉官网素材库")
public class MaterialMain implements Serializable{

	private static final long serialVersionUID = -1930350718180029290L;

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition="int(11) comment '主键ID'")
	private Integer id; 
	
	@Column(name = "material_type", columnDefinition="int(2) comment '素材类型（1：图片  2：音频  3：视频）'")
	private Integer materialType;
	
	@Column(name = "material_name", columnDefinition="varchar(100) comment '素材名称'")
	private String materialName;
	
	@Column(name = "material_src", columnDefinition="varchar(1000) comment '素材路径'")
	private String materialSrc;
	
	@Column(name = "material_sys_name", columnDefinition="varchar(1000) comment '素材系统自动名称'")
	private String materialSysName;
	
	@Column(name = "material_create_time", columnDefinition="datetime comment '创建时间'")
	private Date materialCreateTime;
	
	@Column(name = "material_status", columnDefinition="int(2) DEFAULT '0' comment '状态（0：正常使用）'")
	private Integer materialStatus;

	/*============= get set ==================*/
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMaterialType() {
		return materialType;
	}

	public void setMaterialType(Integer materialType) {
		this.materialType = materialType;
	}

	public String getMaterialName() {
		return materialName;
	}

	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}

	public String getMaterialSrc() {
		return materialSrc;
	}

	public void setMaterialSrc(String materialSrc) {
		this.materialSrc = materialSrc;
	}

	public Date getMaterialCreateTime() {
		return materialCreateTime;
	}

	public void setMaterialCreateTime(Date materialCreateTime) {
		this.materialCreateTime = materialCreateTime;
	}

	public Integer getMaterialStatus() {
		return materialStatus;
	}

	public void setMaterialStatus(Integer materialStatus) {
		this.materialStatus = materialStatus;
	}

	public String getMaterialSysName() {
		return materialSysName;
	}

	public void setMaterialSysName(String materialSysName) {
		this.materialSysName = materialSysName;
	}
	
}





