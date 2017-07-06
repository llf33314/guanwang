package com.gt.model.menu;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_menu")
@org.hibernate.annotations.Table(appliesTo = "t_ws_menu", comment = "多粉官网菜单")
public class Menu implements Serializable{

	private static final long serialVersionUID = -1930350718180029290L;

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition="`id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键'")
	private Integer id; 
	
	@Column(name = "menu_pid", columnDefinition="int(11) DEFAULT '0' COMMENT '父级ID（没有父级为0）'")
	private Integer menuPid = 0;
	
	@Column(name = "menu_name", columnDefinition="varchar(100) DEFAULT NULL COMMENT '菜单名称'")
	private String menuName;
	
	@Column(name = "menu_url", columnDefinition="varchar(500) DEFAULT NULL COMMENT '菜单对应链接'")
	private String menuUrl;
	
	@Column(name = "menu_desc", columnDefinition="varchar(300) DEFAULT NULL COMMENT '备注'")
	private String menuDesc;
	
	@Column(name = "menu_status", columnDefinition="int(2) DEFAULT '0' COMMENT '菜单状态（0：正常  1：停用）'")
	private Integer menuStatus = 0;
	
	@Column(name = "menu_type", columnDefinition="int(2) DEFAULT '0' COMMENT '菜单类型（0：无子菜单  1：有子菜单）'")
	private Integer menuType;
	
	@Column(name = "menu_sort", columnDefinition="int(2) DEFAULT '0' COMMENT '菜单排序'")
	private Integer menu_sort = 0;

	/*============= get set ==================*/
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMenuPid() {
		return menuPid;
	}

	public void setMenuPid(Integer menuPid) {
		this.menuPid = menuPid;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getMenuDesc() {
		return menuDesc;
	}

	public void setMenuDesc(String menuDesc) {
		this.menuDesc = menuDesc;
	}

	public Integer getMenuStatus() {
		return menuStatus;
	}

	public void setMenuStatus(Integer menuStatus) {
		this.menuStatus = menuStatus;
	}

	public Integer getMenuType() {
		return menuType;
	}

	public void setMenuType(Integer menuType) {
		this.menuType = menuType;
	}

	public Integer getMenu_sort() {
		return menu_sort;
	}

	public void setMenu_sort(Integer menu_sort) {
		this.menu_sort = menu_sort;
	}

}




