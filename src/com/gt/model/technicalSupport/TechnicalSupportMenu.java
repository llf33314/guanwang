package com.gt.model.technicalSupport;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_technical_support_menu")
@org.hibernate.annotations.Table(appliesTo = "t_ws_technical_support_menu", comment = "技术支持菜单")
public class TechnicalSupportMenu {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "tsLevel", columnDefinition = "int(4) DEFAULT NULL COMMENT '级别(1, 2)'")
	private Integer tsLevel = 1;
	
	@Column(name = "tsName", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '菜单名'")
	private String tsName;
	
	@Column(name = "parentId", columnDefinition = "int(11) DEFAULT NULL COMMENT '父级ID'")
	private Integer parentId = 0;
	
	@Column(name = "creater", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '创建人'")
	private String creater = "";
	
	@Column(name = "createtime", columnDefinition = "datetime DEFAULT NULL COMMENT '创建时间'")
	private Date createtime = new Date();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTsLevel() {
		return tsLevel;
	}

	public void setTsLevel(Integer tsLevel) {
		this.tsLevel = tsLevel;
	}

	public String getTsName() {
		return tsName;
	}

	public void setTsName(String tsName) {
		this.tsName = tsName;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	@Override
	public String toString() {
		return "TechnicalSupportMenu [id=" + id + ", tsLevel=" + tsLevel + ", tsName=" + tsName + ", parentId="
				+ parentId + ", creater=" + creater + ", createtime=" + createtime + "]";
	}
	
	
}
