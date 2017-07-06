package com.gt.model.productCenter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_product_center_vbtn")
@org.hibernate.annotations.Table(appliesTo = "t_ws_product_center_vbtn", comment = "视频按钮")
public class ProductCenterVbtn {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "productid", columnDefinition = "int(11) DEFAULT NULL COMMENT '产品中心id'")
    private Integer productid;

	@Column(name = "btnname", columnDefinition = "varchar(6) DEFAULT NULL COMMENT '视频按钮名称'")
    private String btnname;

	@Column(name = "vlink", columnDefinition = "varchar(250) DEFAULT NULL COMMENT 'URL'")
    private String vlink;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public String getBtnname() {
		return btnname;
	}

	public void setBtnname(String btnname) {
		this.btnname = btnname;
	}

	public String getVlink() {
		return vlink;
	}

	public void setVlink(String vlink) {
		this.vlink = vlink;
	}

    
}