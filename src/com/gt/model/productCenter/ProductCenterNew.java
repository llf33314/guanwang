package com.gt.model.productCenter;

import javax.persistence.*;
import java.text.SimpleDateFormat;

@Entity
@Table(name = "t_ws_product_center_new")
@org.hibernate.annotations.Table(appliesTo = "t_ws_product_center_new", comment = "产品中心")
public class ProductCenterNew {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

	@Column(name = "classid", columnDefinition = "int(11) COMMENT 'classid'")
    private Integer classid;

	@Column(name = "logourl", columnDefinition = "varchar(250) DEFAULT '' COMMENT '产品中心名称LOGO'")
    private String logourl = "";

	@Column(name = "pcname", columnDefinition = "varchar(20) DEFAULT '' COMMENT '产品中心名称'")
    private String pcname = "";

	@Column(name = "pcdesc", columnDefinition = "varchar(140) DEFAULT '' COMMENT '产品中心描述'")
    private String pcdesc = "";
    
	@Column(name = "contenttitles", columnDefinition = "text COMMENT '内容标题'")
    private String contenttitles = "";

	@Column(name = "contents", columnDefinition = "text COMMENT '内容'")
    private String contents = "";

    @Column(name = "imageslist", columnDefinition = "text COMMENT '内容图片'")
    private String imageslist = "";

	@Column(name = "qrcode", columnDefinition = "varchar(250) DEFAULT '' COMMENT '产品中心二维码图片'")
    private String qrcode = "";

	@Column(name = "createtime", columnDefinition = "varchar(20) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
	
	@Column(name = "ishot", columnDefinition = "int(2) COMMENT '是否热门'")
    private Integer ishot = 0;
	
	@Column(name = "pcpagetitle", columnDefinition = "varchar(50) DEFAULT '' COMMENT '页面title'")
    private String pcpagetitle = "";
	
	@Column(name = "pcmeta", columnDefinition = "varchar(200) DEFAULT '' COMMENT 'meta内容'")
    private String pcmeta = "";
	
	@Column(name = "ishome", columnDefinition = "int(1) DEFAULT '0' COMMENT '首页是否显示'")
	private Integer ishome = 0;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public String getLogourl() {
        return logourl;
    }

    public void setLogourl(String logourl) {
        this.logourl = logourl == null ? null : logourl.trim();
    }

    public String getPcname() {
        return pcname;
    }

    public void setPcname(String pcname) {
        this.pcname = pcname == null ? null : pcname.trim();
    }

    public String getPcdesc() {
        return pcdesc;
    }

    public void setPcdesc(String pcdesc) {
        this.pcdesc = pcdesc == null ? null : pcdesc.trim();
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode == null ? null : qrcode.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

    public String getContenttitles() {
        return contenttitles;
    }

    public void setContenttitles(String contenttitles) {
        this.contenttitles = contenttitles;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getImageslist() {
        return imageslist;
    }

    public void setImageslist(String imageslist) {
        this.imageslist = imageslist;
    }

    public Integer getIshot() {
		return ishot;
	}

	public void setIshot(Integer ishot) {
		this.ishot = ishot;
	}

	public String getPcpagetitle() {
		return pcpagetitle;
	}

	public void setPcpagetitle(String pcpagetitle) {
		this.pcpagetitle = pcpagetitle;
	}

	public String getPcmeta() {
		return pcmeta;
	}

	public void setPcmeta(String pcmeta) {
		this.pcmeta = pcmeta;
	}

	public Integer getIshome() {
		return ishome;
	}

	public void setIshome(Integer ishome) {
		this.ishome = ishome;
	}
    
}