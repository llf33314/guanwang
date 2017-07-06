package com.gt.model.technicalSupport;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_technical_support")
@org.hibernate.annotations.Table(appliesTo = "t_ws_technical_support", comment = "技术支持")
public class TechnicalSupport {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "tsMenuId", columnDefinition = "int(11) DEFAULT NULL COMMENT '技术支持菜单ID'")
	private Integer tsMenuId;
	
	@Column(name = "question", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '提问'")
	private String question;
	
	@Column(name = "answer", columnDefinition = "text DEFAULT NULL COMMENT '回答'")
	private String answer;
	
	@Column(name = "creater", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '创建人'")
	private String creater = "";
	
	@Column(name = "createtime", columnDefinition = "datetime DEFAULT NULL COMMENT '创建时间'")
	private Date createtime = new Date();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTsMenuId() {
		return tsMenuId;
	}

	public void setTsMenuId(Integer tsMenuId) {
		this.tsMenuId = tsMenuId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
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

	@Override
	public String toString() {
		return "TechnicalSupport [id=" + id + ", tsMenuId=" + tsMenuId + ", question=" + question + ", answer=" + answer
				+ ", creater=" + creater + ", createtime=" + createtime + "]";
	}
	
}
