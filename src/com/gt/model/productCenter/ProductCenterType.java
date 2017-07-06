package com.gt.model.productCenter;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_product_center_type")
@org.hibernate.annotations.Table(appliesTo = "t_ws_product_center_type", comment = "产品中心类型")
public class ProductCenterType {
	
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

    @Column(name = "pctypename", columnDefinition = "varchar(20) DEFAULT '' COMMENT '产品中心类型名称'")
    private String pctypename;

    @Column(name = "createtime", columnDefinition = "varchar(20) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
    
    @Column(name = "englishname", columnDefinition = "varchar(50) DEFAULT '' COMMENT '英文名'")
    private String englishname;
    
    @Column(name = "typedesc", columnDefinition = "varchar(200) DEFAULT '' COMMENT '描述'")
    private String typedesc;
    
    @Column(name = "typeimg", columnDefinition = "varchar(255) DEFAULT '' COMMENT '首页图片'")
    private String typeimg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPctypename() {
        return pctypename;
    }

    public void setPctypename(String pctypename) {
        this.pctypename = pctypename == null ? null : pctypename.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

	public String getTypeimg() {
		return typeimg;
	}

	public void setTypeimg(String typeimg) {
		this.typeimg = typeimg;
	}

	public String getEnglishname() {
		return englishname;
	}

	public void setEnglishname(String englishname) {
		this.englishname = englishname;
	}

	public String getTypedesc() {
		return typedesc;
	}

	public void setTypedesc(String typedesc) {
		this.typedesc = typedesc;
	}
    
}