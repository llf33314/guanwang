package com.gt.model.home;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_home_rotation")
@org.hibernate.annotations.Table(appliesTo = "t_ws_home_rotation", comment = "首页轮播图")
public class HomeRotation {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "imgurl", columnDefinition = "varchar(250) DEFAULT '' COMMENT '轮播图片地址'")
    private String imgurl = "";
	
	@Column(name = "url", columnDefinition = "`url` varchar(250) COMMENT '跳转URL'")
	private String url = "";

	@Column(name = "createtime", columnDefinition = "varchar(50) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
	

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}