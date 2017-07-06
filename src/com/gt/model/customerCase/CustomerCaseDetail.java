package com.gt.model.customerCase;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_case_detail")
@org.hibernate.annotations.Table(appliesTo = "t_ws_case_detail", comment = "客户案例详情")
public class CustomerCaseDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition="int(11) not null comment '主键'")
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "case_main_id", columnDefinition="int(11) comment '关联主表ID'")
	private CustomerCase customerCase;

	@Column(name = "detail_name", columnDefinition="varchar(200) comment '详情名称'")
	private String detail_name;

	@Column(name = "detail_main_img", columnDefinition="varchar(1000) comment '详情主要图片'")
	private String detail_main_img;

	@Column(name = "detail_other_img", columnDefinition="varchar(1000) comment '详情次要图片'")
	private String detail_other_img;

	@Column(name = "detail_des", columnDefinition="varchar(500) comment '描述'")
	private String detail_des;

	@Column(name = "detail_status", columnDefinition="int(2) comment '状态'")
	private String detail_status;

	@Column(name = "create_time", columnDefinition="datetime comment '创建时间'")
	private Date create_time;

	@Column(name = "create_name", columnDefinition="varchar(200) comment '创建人'")
	private String create_name;

	// =========== get set==============
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public CustomerCase getCustomerCase() {
		return customerCase;
	}

	public void setCustomerCase(CustomerCase customerCase) {
		this.customerCase = customerCase;
	}

	public String getDetail_name() {
		return detail_name;
	}

	public void setDetail_name(String detail_name) {
		this.detail_name = detail_name;
	}

	public String getDetail_main_img() {
		return detail_main_img;
	}

	public void setDetail_main_img(String detail_main_img) {
		this.detail_main_img = detail_main_img;
	}

	public String getDetail_other_img() {
		return detail_other_img;
	}

	public void setDetail_other_img(String detail_other_img) {
		this.detail_other_img = detail_other_img;
	}

	public String getDetail_des() {
		return detail_des;
	}

	public void setDetail_des(String detail_des) {
		this.detail_des = detail_des;
	}

	public String getDetail_status() {
		return detail_status;
	}

	public void setDetail_status(String detail_status) {
		this.detail_status = detail_status;
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
