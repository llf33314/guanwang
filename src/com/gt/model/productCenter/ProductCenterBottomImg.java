package com.gt.model.productCenter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_product_center_bottom_img")
@org.hibernate.annotations.Table(appliesTo = "t_ws_product_center_bottom_img", comment = "产品中心底部图片")
public class ProductCenterBottomImg {
	
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "imgurl", columnDefinition = "varchar(250) DEFAULT '' COMMENT '产品中心底部图片'")
    private String imgurl = "";

	@Column(name = "imgdesc", columnDefinition = "varchar(140) DEFAULT '' COMMENT '产品中心底部图片描述'")
    private String imgdesc = "";

	@Column(name = "url", columnDefinition = "varchar(250) DEFAULT '' COMMENT '产品中心底部图片跳转链接'")
    private String url = "";

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
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

	public String getImgdesc() {
		return imgdesc;
	}

	public void setImgdesc(String imgdesc) {
		this.imgdesc = imgdesc;
	}
    
    
}