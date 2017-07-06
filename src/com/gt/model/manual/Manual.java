package com.gt.model.manual;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_manual")
@org.hibernate.annotations.Table(appliesTo = "t_ws_manual", comment = "使用手册")
public class Manual {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "title", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '文章标题'")
	private String title;
	
	@Column(name = "lv", columnDefinition = "int(4) DEFAULT NULL COMMENT '等级'")
	private Integer lv;
	
	@Column(name = "parentId", columnDefinition = "int(11) DEFAULT NULL COMMENT '父ID'")
	private Integer parentId = 0;
	
	@Column(name = "content", columnDefinition = "text DEFAULT NULL COMMENT '内容'")
	private String content;
	
	@Column(name = "phoneUrl", columnDefinition = "varchar(200) DEFAULT NULL COMMENT '手机演示URL'")
	private String phoneUrl;
	
	@Column(name = "videoUrl", columnDefinition = "varchar(200) DEFAULT NULL COMMENT '视频教程URL'")
	private String videoUrl;
	
	@Column(name = "sort", columnDefinition = "varchar(4) DEFAULT '0' COMMENT '排序'")
	private String sort = "0";
	
	@Column(name = "creater", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '创建人'")
	private String creater = "Night";
	
	@Column(name = "createtime", columnDefinition = "datetime DEFAULT NULL COMMENT '创建时间'")
	private Date createtime = new Date();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getLv() {
		return lv;
	}

	public void setLv(Integer lv) {
		this.lv = lv;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getPhoneUrl() {
		return phoneUrl;
	}

	public void setPhoneUrl(String phoneUrl) {
		this.phoneUrl = phoneUrl;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	@Override
	public String toString() {
		return "Manual [id=" + id + ", title=" + title + ", lv=" + lv + ", parentId=" + parentId + ", content="
				+ content + ", phoneUrl=" + phoneUrl + ", videoUrl=" + videoUrl + ", sort=" + sort + ", creater="
				+ creater + ", createtime=" + createtime + "]";
	}

}
