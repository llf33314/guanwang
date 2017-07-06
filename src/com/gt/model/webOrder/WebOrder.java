package com.gt.model.webOrder;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_web_order")
@org.hibernate.annotations.Table(appliesTo = "t_ws_web_order", comment = "购买套餐订单")
public class WebOrder {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "name", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '联系人名'")
	private String name = "";

	@Column(name = "tel", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '联系人电话'")
	private String tel = "";
	
	@Column(name = "submittime", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '提交时间'")
	private String submittime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
	
	@Column(name = "paymenttime", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '付款时间'")
	private String paymenttime = "";
	
	@Column(name = "paytype", columnDefinition = "int(1) COMMENT '0:weixin, 1:alipay'")
	private Integer paytype = 0;
	
	@Column(name = "paystatus", columnDefinition = "int(1) DEFAULT '0' COMMENT '支付状态'")
	private Integer paystatus = 0;
	
	@Column(name = "mealid", columnDefinition = "int(11) COMMENT '套餐ID'")
	private Integer mealid;
	
	@Column(name = "price", columnDefinition = "double(8,2) default '0.0' COMMENT '价格'")
	private Double price = 0.0;
	
	@Column(name = "orderno", columnDefinition = "varchar(50) COMMENT '订单号'")
	private String orderno = "WSO" + new SimpleDateFormat("yyyyMMddHHmmss").format(System.currentTimeMillis());
	
	@Column(name = "memberid", columnDefinition = "int(11) COMMENT '会员ID'")
	private Integer memberid;

	@Column(name = "source", columnDefinition = "varchar(12) DEFAULT NULL COMMENT '来源'")
	private String source;
	
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSubmittime() {
		return submittime;
	}

	public void setSubmittime(String submittime) {
		this.submittime = submittime;
	}

	public String getPaymenttime() {
		return paymenttime;
	}

	public void setPaymenttime(String paymenttime) {
		this.paymenttime = paymenttime;
	}

	public Integer getPaystatus() {
		return paystatus;
	}

	public void setPaystatus(Integer paystatus) {
		this.paystatus = paystatus;
	}

	public Integer getPaytype() {
		return paytype;
	}

	public void setPaytype(Integer paytype) {
		this.paytype = paytype;
	}

	public Integer getMealid() {
		return mealid;
	}

	public void setMealid(Integer mealid) {
		this.mealid = mealid;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}

	public Integer getMemberid() {
		return memberid;
	}

	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}
	
}