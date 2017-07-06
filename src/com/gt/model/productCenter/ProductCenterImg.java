package com.gt.model.productCenter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_product_center_img")
@org.hibernate.annotations.Table(appliesTo = "t_ws_product_center_img", comment = "产品中心图片")
public class ProductCenterImg {
	
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "productid", columnDefinition = "int(11) COMMENT '产品中心id'")
    private Integer productid;

	@Column(name = "imgurl", columnDefinition = "varchar(250) DEFAULT '' COMMENT '产品中心对应图片'")
    private String imgurl;

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

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }
}