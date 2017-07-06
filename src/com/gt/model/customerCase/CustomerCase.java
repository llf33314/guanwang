package com.gt.model.customerCase;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_case_main")
@org.hibernate.annotations.Table(appliesTo = "t_ws_case_main", comment = "客户案例")
public class CustomerCase implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition="int(11) comment 'ID'")
	private Integer id;

	@Column(name = "case_code", columnDefinition="varchar(50) comment '案例编码'")
	private String case_code;

	@Column(name = "case_name", columnDefinition="varchar(300) comment '案例名称'")
	private String case_name;

	@Column(name = "case_explain", columnDefinition="varchar(1000) comment '案例说明'")
	private String case_explain;

	@Column(name = "case_status", columnDefinition="int(2) comment '状态'")
	private Integer case_status;

	@Column(name = "case_remark", columnDefinition="varchar(500) comment '备注'")
	private String case_remark;

	@Column(name = "create_time", columnDefinition="datetime comment '创建时间'")
	private Date create_time = new Date();

	@Column(name = "create_name", columnDefinition="varchar(200) comment '创建人'")
	private String create_name;

	// =========== get,set==============
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCase_code() {
		return case_code;
	}

	public void setCase_code(String case_code) {
		this.case_code = case_code;
	}

	public String getCase_name() {
		return case_name;
	}

	public void setCase_name(String case_name) {
		this.case_name = case_name;
	}

	public String getCase_explain() {
		return case_explain;
	}

	public void setCase_explain(String case_explain) {
		this.case_explain = case_explain;
	}

	public Integer getCase_status() {
		return case_status;
	}

	public void setCase_status(Integer case_status) {
		this.case_status = case_status;
	}

	public String getCase_remark() {
		return case_remark;
	}

	public void setCase_remark(String case_remark) {
		this.case_remark = case_remark;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public String getCreate_name() {
		return create_name;
	}

	public void setCreate_name(String create_name) {
		this.create_name = create_name;
	}
}
