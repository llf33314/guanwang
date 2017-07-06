package com.gt.model.mealSet;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_meal_set_type")
@org.hibernate.annotations.Table(appliesTo = "t_ws_meal_set_type", comment = "套餐类型")
public class MealSetType {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "typename", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '套餐名'")
	private String typename = "";
	
	@Column(name = "setprice", columnDefinition = "double(8,2) DEFAULT '0.00' COMMENT '价格'")
	private Double setprice = 0.0;
	
	@Column(name = "createtime", columnDefinition = "varchar(50) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Double getSetprice() {
		return setprice;
	}

	public void setSetprice(Double setprice) {
		this.setprice = setprice;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

}