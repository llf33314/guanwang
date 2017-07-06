package com.gt.model.duofenIntroduction;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_duofen_introduction")
@org.hibernate.annotations.Table(appliesTo = "t_ws_duofen_introduction", comment = "多粉简介")
public class DuofenIntroduction {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "imgtype", columnDefinition = "int(4) DEFAULT 0 COMMENT '0=办公环境, 1=公司活动'")
	private Integer imgtype;
	
	@Column(name = "imgurl", columnDefinition = "varchar(250) DEFAULT '' COMMENT 'IMAGE URL'")
	private String imgurl = "";
	
	@Column(name = "url", columnDefinition = "varchar(250) DEFAULT '' COMMENT 'URL'")
	private String url = "";
	
	@Column(name = "remark", columnDefinition = "varchar(140) DEFAULT '' COMMENT '备注'")
	private String remark = "";
	
	@Column(name = "createtime", columnDefinition = "varchar(20) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getImgtype() {
		return imgtype;
	}

	public void setImgtype(Integer imgtype) {
		this.imgtype = imgtype;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	@Override
	public String toString() {
		return "DuofenIntroduction [id=" + id + ", imgtype=" + imgtype + ", imgurl=" + imgurl + ", url=" + url
				+ ", remark=" + remark + ", createtime=" + createtime + "]";
	}
	
	
}
