package com.gt.model.busCheckIn;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_buscheckin")
@org.hibernate.annotations.Table(appliesTo = "t_ws_buscheckin", comment = "入住数")
public class BusCheckIn {

	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "busCheckIn", columnDefinition = "int(11) DEFAULT 0 COMMENT '入住数'")
	private Integer busCheckIn = 0;
	
	@Column(name = "createtime", columnDefinition = "datetime DEFAULT NULL COMMENT '创建时间'")
	private Date createtime = new Date();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getBusCheckIn() {
		return busCheckIn;
	}

	public void setBusCheckIn(Integer busCheckIn) {
		this.busCheckIn = busCheckIn;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	@Override
	public String toString() {
		return "BusCheckIn [id=" + id + ", busCheckIn=" + busCheckIn + ", createtime=" + createtime + "]";
	}
	
	
}
