package com.gt.model.employee;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 员工信息
 * @author Administrator
 *
 */
@Entity
@Table(name = "t_man_employee")
public class Employee implements Serializable {
	// ~ 静态成员 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //

	private static final long serialVersionUID = 1L;
	// ~ 静态方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	
	// ~ 成员变量 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) comment 'ID'")
	private Integer id;

	@Column(name = "number", columnDefinition = "varchar(20) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '员工工号'")
	private String number;
	
	@Column(name = "name", columnDefinition = "varchar(20) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '员工姓名'")
	private String name;
	
	@Column(name = "sex", columnDefinition = "varchar(10) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '员工性别'")
	private String sex;
	
	@Column(name = "idcard", columnDefinition = "varchar(30) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '员工身份证'")
	private String idcard;
	
	@Column(name = "adder", columnDefinition = "varchar(60) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '所属地区'")
	private String adder;
	
	@Column(name = "channel", columnDefinition = "varchar(80) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '所属渠道'")
	private String channel;
	
	@Column(name = "create_person", columnDefinition = "int(11) DEFAULT NULL COMMENT '创建人'")
	private Integer createrId;
	
	@Column(name = "create_time", columnDefinition = "varchar(20) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '创建时间'")
	private String createTime;
	
	@Column(name = "url", columnDefinition = "varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '员工图片URL'")
	private String url;
	
	@Column(name = "evaluate", columnDefinition = "varchar(200) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '五星评价言论'")
	private String evaluate;
	
	@Column(name = "score", columnDefinition = "int(1) DEFAULT NULL COMMENT '五星数量'")
	private Integer score;
	
	
	// ~ 构造方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	
	// ~ 成员方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	
	// ~ g^setX ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getAdder() {
		return adder;
	}

	public void setAdder(String adder) {
		this.adder = adder;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public Integer getCreaterId() {
		return createrId;
	}

	public void setCreaterId(Integer createrId) {
		this.createrId = createrId;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getEvaluate() {
		return evaluate;
	}

	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

}
