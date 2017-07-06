package com.gt.model.joinus;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 加入我们
 * 
 * @author zhangwei
 *
 */
@Entity
@Table(name = "t_ws_joinus_main")
@org.hibernate.annotations.Table(appliesTo = "t_ws_joinus_main", comment = "加入我们")
public class JoinUs implements Serializable {
	// ~ 静态成员 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 初始状态
	 */
	public static final Integer STATUS_NEW = 0;
	/**
	 * 选中状态
	 */
	public static final Integer STATUS_SELECT = 1; 

	// ~ 成员变量 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) comment 'ID'")
	private Integer id;

	@Column(name = "title", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '标题'")
	private String title;

	@Column(name = "images_url", columnDefinition = "varchar(200) DEFAULT NULL COMMENT '图片URL'")
	private String imagesUrl;

	@Column(name = "creater", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '创建人'")
	private String creater;

	@Column(name = "createtime", columnDefinition = "datetime DEFAULT NULL COMMENT '创建时间'")
	private Date createtime = new Date();
	
	@Column(name = "originalFilename", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '源文件名称'")
	private String originalFilename;
	
	@Column(name = "duty", columnDefinition = "text comment '职责'")
	private String duty;
	
	@Column(name = "demand", columnDefinition = " text comment '要求'")
	private String demand;
	
	@Column(name = "status", columnDefinition = " int(2) comment '状态(0为未选择，1为选中)'")
	private Integer status = STATUS_NEW;
	// ~ 静态方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// ~ 成员方法 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// ~ g^setX ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
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

	public String getImagesUrl() {
		return imagesUrl;
	}

	public void setImagesUrl(String imagesUrl) {
		this.imagesUrl = imagesUrl;
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

	public String getOriginalFilename() {
		return originalFilename;
	}

	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	public String getDemand() {
		return demand;
	}

	public void setDemand(String demand) {
		this.demand = demand;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
