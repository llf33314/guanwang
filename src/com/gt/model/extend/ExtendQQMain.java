package com.gt.model.extend;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_extend_qq")
@org.hibernate.annotations.Table(appliesTo = "t_ws_extend_qq", comment = "推广QQ设置")
public class ExtendQQMain implements Serializable{

	private static final long serialVersionUID = -1930350718180029290L;

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition="int(11) comment '主键ID'")
	private Integer id; 
	
	@Column(name = "extend_qq", columnDefinition="varchar(50) comment 'qq号码（-1为营销QQ）'")
	private String extendQQ;
	
	@Column(name = "extend_type", columnDefinition="int(2) DEFAULT '0' comment '状态（-1：营销QQ）'")
	private String extendType;
	
	@Column(name = "extend_start", columnDefinition="time comment 'QQ开始工作时间'")
	private Date extendStart;
	
	@Column(name = "extend_end", columnDefinition="time comment 'QQ结束工作时间'")
	private Date extendEnd;
	
	@Column(name = "extend_create_time", columnDefinition="datetime comment '创建时间'")
	private Date extendCreateTime;
	
	@Column(name = "extend_status", columnDefinition="int(2) DEFAULT '0' comment '状态（0：开启，1：暂停）'")
	private Integer extendStatus;

	/*============= get set ==================*/
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getExtendQQ() {
		return extendQQ;
	}

	public void setExtendQQ(String extendQQ) {
		this.extendQQ = extendQQ;
	}

	public String getExtendType() {
		return extendType;
	}

	public void setExtendType(String extendType) {
		this.extendType = extendType;
	}

	public Date getExtendStart() {
		return extendStart;
	}

	public void setExtendStart(Date extendStart) {
		this.extendStart = extendStart;
	}

	public Date getExtendEnd() {
		return extendEnd;
	}

	public void setExtendEnd(Date extendEnd) {
		this.extendEnd = extendEnd;
	}

	public Date getExtendCreateTime() {
		return extendCreateTime;
	}

	public void setExtendCreateTime(Date extendCreateTime) {
		this.extendCreateTime = extendCreateTime;
	}

	public Integer getExtendStatus() {
		return extendStatus;
	}

	public void setExtendStatus(Integer extendStatus) {
		this.extendStatus = extendStatus;
	}

}


