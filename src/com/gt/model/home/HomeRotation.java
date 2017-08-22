package com.gt.model.home;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_index_advertising")
@org.hibernate.annotations.Table(appliesTo = "t_ws_index_advertising", comment = "首页广告图")
public class HomeRotation {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "img_url", columnDefinition = "varchar(250) DEFAULT '' COMMENT '图片地址'")
    private String img_url = "";

	@Column(name = "isshow", columnDefinition = "int(11) NOT NULL COMMENT '0：不显示   1：显示'")
	private Integer isshow;

	@Column(name = "showtime", columnDefinition = "varchar(50) DEFAULT '' COMMENT '显示时间'")
	private String showtime = "";

    @Column(name = "url", columnDefinition = "`url` varchar(250) COMMENT '跳转URL'")
    private String url = "";

	@Column(name = "createtime", columnDefinition = "varchar(50) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());

	public Integer getIsshow() {
		return isshow;
	}

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setIsshow(Integer isshow) {
		this.isshow = isshow;
	}

	public String getShowtime() {
		return showtime;
	}

	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

}