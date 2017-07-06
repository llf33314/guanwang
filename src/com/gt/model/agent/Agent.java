package com.gt.model.agent;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 代理
 * @author zhangwei
 *
 */
@Entity
@Table(name = "t_ws_agent_main")
@org.hibernate.annotations.Table(appliesTo = "t_ws_agent_main", comment = "代理")
public class Agent implements Serializable{
	// ~ 静态成员 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	
	private static final long serialVersionUID = 1L;
	
	public static final Integer STATUS_NEW = 0; //初始状态,未通过申请
	public static final Integer STATUS_PASS = 1;	//已通过申请
	
	// ~ 成员变量 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) comment 'ID'")
	private Integer id;

	@Column(name = "name", columnDefinition = "varchar(50) comment '姓名'")
	private String name;

	@Column(name = "phone", columnDefinition = "varchar(50) comment '手机'")
	private String phone;

	@Column(name = "qq", columnDefinition = "varchar(50) comment 'QQ'")
	private String qq;

	@Column(name = "company", columnDefinition = "varchar(100) comment '公司名称'")
	private String company;

	@Column(name = "add_province", columnDefinition = "varchar(50) comment '地址_省份'")
	private String add_province;
	
	@Column(name = "add_city", columnDefinition = "varchar(50) comment '地址_城市'")
	private String add_city;
	
	@Column(name = "add_area", columnDefinition = "varchar(50) comment '地址_区域'")
	private String add_area;

	@Column(name = "coo_province", columnDefinition = "varchar(255) comment '合作区域_省份'")
	private String coo_province;
	
	@Column(name = "coo_city", columnDefinition = "varchar(255) comment '合作区域_城市'")
	private String coo_city;
	
	@Column(name = "coo_area", columnDefinition = "varchar(255) comment '合作区域_区域'")
	private String coo_area;

	@Column(name = "createtime", columnDefinition = "datetime comment '创建时间'")
	private Date createtime = new Date();;

	@Column(name = "status", columnDefinition = "int(2) comment '申请状态(0为未通过,1为已通过)'")
	private Integer status = STATUS_NEW;
	
	@Column(name = "agent_type", columnDefinition = "int(2) comment '代理类型(0：默认，1：城市代理商，2：县区级代理商，3：城市合伙人，4：城市服务商)'")
	private Integer agent_type;
	
	@Column(name = "intro", columnDefinition = "varchar(500) comment '简介'")
	private String intro;
	
	@Column(name = "auth_code", columnDefinition = "varchar(50) comment '授权码'")
	private String auth_code;
	
	
	// ~ 静态方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// ~ 构造方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// ~ 成员方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// ~ g^setX ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAdd_province() {
		return add_province;
	}

	public void setAdd_province(String add_province) {
		this.add_province = add_province;
	}

	public String getAdd_city() {
		return add_city;
	}

	public void setAdd_city(String add_city) {
		this.add_city = add_city;
	}

	public String getAdd_area() {
		return add_area;
	}

	public void setAdd_area(String add_area) {
		this.add_area = add_area;
	}

	public String getCoo_province() {
		return coo_province;
	}

	public void setCoo_province(String coo_province) {
		this.coo_province = coo_province;
	}

	public String getCoo_city() {
		return coo_city;
	}

	public void setCoo_city(String coo_city) {
		this.coo_city = coo_city;
	}

	public String getCoo_area() {
		return coo_area;
	}

	public void setCoo_area(String coo_area) {
		this.coo_area = coo_area;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getAgent_type() {
		return agent_type;
	}

	public void setAgent_type(Integer agent_type) {
		this.agent_type = agent_type;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getAuth_code() {
		return auth_code;
	}

	public void setAuth_code(String auth_code) {
		this.auth_code = auth_code;
	}

	
}
