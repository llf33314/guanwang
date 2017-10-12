package com.gt.model.operationCourse;

import javax.persistence.*;
import java.text.SimpleDateFormat;

@Entity
@Table(name = "t_ws_operation_course")
@org.hibernate.annotations.Table(appliesTo = "t_ws_operation_course", comment = "运营课程")
public class OperationCourse {
	
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

    @Column(name = "teacherid", columnDefinition = "int(11)  COMMENT '讲师id'")
    private Integer teacherid;

    @Column(name = "createtime", columnDefinition = "varchar(20) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
    
    @Column(name = "logourl", columnDefinition = "varchar(250) DEFAULT '' COMMENT '展示图片'")
    private String logourl;
    
    @Column(name = "pcdesc", columnDefinition = "varchar(140) DEFAULT '' COMMENT '课程标题'")
    private String pcdesc;

    @Column(name = "applystate", columnDefinition = "int(2) DEFAULT '' COMMENT '报名状态'")
    private Integer applystate;

    @Column(name = "applydesc", columnDefinition = "varchar(140) DEFAULT '' COMMENT '报名描述'")
    private String applydesc;

    @Column(name = "applycount", columnDefinition = "int(10) DEFAULT '' COMMENT '报名状态'")
    private Integer applycount;

    @Column(name = "contenttitles", columnDefinition = "varchar(300) DEFAULT '' COMMENT '内容标题'")
    private String contenttitles;

    @Column(name = "contents", columnDefinition = "text COMMENT '内容'")
    private String contents;

    @Column(name = "imageslist", columnDefinition = "varchar(4000) DEFAULT '' COMMENT '内容图片'")
    private String imageslist;

    @Column(name = "videolist", columnDefinition = "varchar(2000) DEFAULT '' COMMENT '内容图片'")
    private String videolist;

    @Transient
    private String teachername;

    @Transient
    private String teacherdesc;

    @Transient
    private String teacherimg;

    public String getTeachername() {
        return teachername;
    }

    public void setTeachername(String teachername) {
        this.teachername = teachername;
    }

    public String getTeacherdesc() {
        return teacherdesc;
    }

    public void setTeacherdesc(String teacherdesc) {
        this.teacherdesc = teacherdesc;
    }

    public String getTeacherimg() {
        return teacherimg;
    }

    public void setTeacherimg(String teacherimg) {
        this.teacherimg = teacherimg;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(Integer teacherid) {
        this.teacherid = teacherid;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getLogourl() {
        return logourl;
    }

    public void setLogourl(String logourl) {
        this.logourl = logourl;
    }

    public String getPcdesc() {
        return pcdesc;
    }

    public void setPcdesc(String pcdesc) {
        this.pcdesc = pcdesc;
    }

    public Integer getApplystate() {
        return applystate;
    }

    public void setApplystate(Integer applystate) {
        this.applystate = applystate;
    }

    public String getApplydesc() {
        return applydesc;
    }

    public void setApplydesc(String applydesc) {
        this.applydesc = applydesc;
    }

    public Integer getApplycount() {
        return applycount;
    }

    public void setApplycount(Integer applycount) {
        this.applycount = applycount;
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

    public String getVideolist() {
        return videolist;
    }

    public void setVideolist(String videolist) {
        this.videolist = videolist;
    }
}