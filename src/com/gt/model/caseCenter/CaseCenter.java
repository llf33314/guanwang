package com.gt.model.caseCenter;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_case_center")
@org.hibernate.annotations.Table(appliesTo = "t_ws_case_center", comment = "案例中心分类")
public class CaseCenter {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "classid", columnDefinition = "int(11) COMMENT 'classid'")
	private Integer classid;
	
	@Column(name = "casedesc", columnDefinition = "varchar(20) DEFAULT '' COMMENT '描述'")
	private String casedesc = "";
	
	@Column(name = "descimg", columnDefinition = "varchar(250) DEFAULT '' COMMENT '描述对应图片'")
	private String descimg = "";
	
	@Column(name = "rotateimg1", columnDefinition = "varchar(250) DEFAULT '' COMMENT '中部图片1'")
	private String rotateimg1 = "";
	
	@Column(name = "rotateimg2", columnDefinition = "varchar(250) DEFAULT '' COMMENT '中部图片2'")
	private String rotateimg2 = "";
	
	@Column(name = "rotateimg3", columnDefinition = "varchar(250) DEFAULT '' COMMENT '中部图片3'")
	private String rotateimg3 = "";
	
	@Column(name = "qrcode", columnDefinition = "varchar(250) DEFAULT '' COMMENT '二维码图片'")
	private String qrcode = "";
	
	@Column(name = "createtime", columnDefinition = "varchar(20) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
	
	@Column(name = "videourl", columnDefinition = "varchar(250) DEFAULT '' COMMENT '视频链接'")
	private String videourl = "";

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getClassid() {
		return classid;
	}

	public void setClassid(Integer classid) {
		this.classid = classid;
	}

	public String getDescimg() {
		return descimg;
	}

	public void setDescimg(String descimg) {
		this.descimg = descimg;
	}

	public String getRotateimg1() {
		return rotateimg1;
	}

	public void setRotateimg1(String rotateimg1) {
		this.rotateimg1 = rotateimg1;
	}

	public String getRotateimg2() {
		return rotateimg2;
	}

	public void setRotateimg2(String rotateimg2) {
		this.rotateimg2 = rotateimg2;
	}

	public String getRotateimg3() {
		return rotateimg3;
	}

	public void setRotateimg3(String rotateimg3) {
		this.rotateimg3 = rotateimg3;
	}

	public String getQrcode() {
		return qrcode;
	}

	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getCasedesc() {
		return casedesc;
	}

	public void setCasedesc(String casedesc) {
		this.casedesc = casedesc;
	}

	public String getVideourl() {
		return videourl;
	}

	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}

	@Override
	public String toString() {
		return "CaseCenter [id=" + id + ", classid=" + classid + ", casedesc=" + casedesc + ", descimg=" + descimg
				+ ", rotateimg1=" + rotateimg1 + ", rotateimg2=" + rotateimg2 + ", rotateimg3=" + rotateimg3
				+ ", qrcode=" + qrcode + ", createtime=" + createtime + ", videourl=" + videourl + "]";
	}

	
}
