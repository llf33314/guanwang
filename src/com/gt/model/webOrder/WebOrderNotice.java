package com.gt.model.webOrder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_web_order_notice")
@org.hibernate.annotations.Table(appliesTo = "t_ws_web_order_notice", comment = "套餐订单通知对象")
public class WebOrderNotice {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "telphone", columnDefinition = "varchar(50) COMMENT '通知电话'")
	private String telphone = "";

	@Column(name = "email", columnDefinition = "varchar(50) COMMENT '通知E-mail'")
	private String email = "";

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}