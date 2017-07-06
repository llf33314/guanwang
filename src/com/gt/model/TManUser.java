package com.gt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 用户表
 * @author Administrator
 * @param <Datetime>
 * @param <Date>
 *
 */
@Entity                        // 表示为实体类
@Table(name="t_man_user")
public class TManUser {
	@Id
	@GeneratedValue
	@Column(name = "user_id", nullable = false)
	private int user_id;
	@Column(name = "user_name")
	private String user_name;
	@Column(name = "user_password")
	private String user_password;
	@Column(name = "user_email")
	private String user_email;
	@Column(name = "user_phone")
	private String user_phone;
	@Column(name = "last_loginadder")
	private String last_loginadder;
	@Column(name = "user_start")
	private int  user_start;
	@Column(name = "last_logintime")
	private String last_logintime;
	@Column(name = "last_loginip")
	private String last_loginip;
	@Column(name = "user_grade")
	private String user_grade;
	@Column(name = "user_createperson")
	private String user_createperson;
	@Column(name = "user_cityid")
	private String user_cityid;
	//默认为1，代表正常，0代表该用户信息被删除
	@Column(name = "user_delect")
	private int user_delect=1;
	@Column(name = "user_realname")
	private String user_realname;
	public TManUser(){
		
	}
	public TManUser(String last_loginip,String user_grade,int user_id,String user_name,String user_password,String user_email,String user_phone,String last_loginadder,int  user_start,String last_logintime,String user_createperson,String user_cityid,int user_delect,String user_realname){
		this.last_loginip = last_loginip;
		this.user_grade = user_grade;
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.last_loginadder = last_loginadder;
		this.user_start = user_start;
		this.last_logintime = last_logintime;
		this.user_createperson = user_createperson;
		this.user_cityid = user_cityid;
		this.user_delect = user_delect;
		this.user_realname = user_realname;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getLast_loginadder() {
		return last_loginadder;
	}
	public void setLast_loginadder(String last_loginadder) {
		this.last_loginadder = last_loginadder;
	}
	public int getUser_start() {
		return user_start;
	}
	public void setUser_start(int user_start) {
		this.user_start = user_start;
	}
	public String getLast_logintime() {
		return last_logintime;
	}
	public void setLast_logintime(String last_logintime) {
		this.last_logintime = last_logintime;
	}
	public String getLast_loginip() {
		return last_loginip;
	}
	public void setLast_loginip(String last_loginip) {
		this.last_loginip = last_loginip;
	}
	public String getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}
	public String getUser_createperson() {
		return user_createperson;
	}
	public void setUser_createperson(String user_createperson) {
		this.user_createperson = user_createperson;
	}
	public String getUser_cityid() {
		return user_cityid;
	}
	public void setUser_cityid(String user_cityid) {
		this.user_cityid = user_cityid;
	}
	public int getUser_delect() {
		return user_delect;
	}
	public void setUser_delect(int user_delect) {
		this.user_delect = user_delect;
	}
	public String getUser_realname() {
		return user_realname;
	}
	public void setUser_realname(String user_realname) {
		this.user_realname = user_realname;
	}
	
}
