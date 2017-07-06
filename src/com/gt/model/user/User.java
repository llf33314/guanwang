package com.gt.model.user;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_user")
@org.hibernate.annotations.Table(appliesTo = "t_ws_user", comment = "多粉官网用户")
public class User implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition="`id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键'")
	private Integer id; 
	
	@Column(name = "user_login", columnDefinition="varchar(300) DEFAULT NULL COMMENT '用户登录账号'")
	private String userLogin;
	
	@Column(name = "user_name", columnDefinition="varchar(300) DEFAULT NULL COMMENT '用户名'")
	private String userName;
	
	@Column(name = "user_password", columnDefinition="char(41) DEFAULT NULL COMMENT '用户密码'")
	private String userPassword;
	
	@Column(name = "user_status", columnDefinition="int(2) DEFAULT NULL COMMENT '账户状态（0：正常   1：停用）'")
	private Integer userStatus;

	/*============= get set ==================*/
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Integer getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}
	
}





