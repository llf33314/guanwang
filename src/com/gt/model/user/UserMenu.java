package com.gt.model.user;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_user_menu")
@org.hibernate.annotations.Table(appliesTo = "t_ws_user_menu", comment = "多粉官网用户菜单权限")
public class UserMenu implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "ws_user_id", columnDefinition="int(11) NOT NULL COMMENT '用户id'")
	private Integer wsUserId; 
	
	@Id
	@GeneratedValue
	@Column(name = "ws_menu_id", columnDefinition="int(11) NOT NULL COMMENT '菜单id'")
	private Integer wsMenuId;
	/*============= get set ==================*/

	public Integer getWsUserId() {
		return wsUserId;
	}

	public void setWsUserId(Integer wsUserId) {
		this.wsUserId = wsUserId;
	}

	public Integer getWsMenuId() {
		return wsMenuId;
	}

	public void setWsMenuId(Integer wsMenuId) {
		this.wsMenuId = wsMenuId;
	}
	
}





