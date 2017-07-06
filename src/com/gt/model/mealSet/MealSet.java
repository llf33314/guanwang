package com.gt.model.mealSet;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_meal_set")
@org.hibernate.annotations.Table(appliesTo = "t_ws_meal_set", comment = "套餐内容")
public class MealSet {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "setid", columnDefinition = "int(11) DEFAULT NULL COMMENT '套餐类型ID'")
    private Integer setid;

	@Column(name = "setname", columnDefinition = "varchar(50) DEFAULT '' COMMENT '套餐内容列表名'")
	private String setname = "";

	@Column(name = "setis", columnDefinition = "int(1) default '0' COMMENT '有无(页面显示 √ or X)'")
	private Integer setis = 1;
	
	@Column(name = "sorting", columnDefinition = "varchar(10) DEFAULT '0' COMMENT '排序'")
	private String sorting = "0";

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSetid() {
		return setid;
	}

	public void setSetid(Integer setid) {
		this.setid = setid;
	}

	public String getSetname() {
		return setname;
	}

	public void setSetname(String setname) {
		this.setname = setname;
	}

	public Integer getSetis() {
		return setis;
	}

	public void setSetis(Integer setis) {
		this.setis = setis;
	}

	public String getSorting() {
		return sorting;
	}

	public void setSorting(String sorting) {
		this.sorting = sorting;
	}
	
}