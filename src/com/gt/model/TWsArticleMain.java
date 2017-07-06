package com.gt.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * TWsArticleMain entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name="t_ws_article_main"
    ,catalog="website"
)

public class TWsArticleMain  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String title;
     private String content;
     private String videoUrl;
     private Integer articleType;
     private String creater;
     private Date createtime;


    // Constructors

    /** default constructor */
    public TWsArticleMain() {
    }

    
    /** full constructor */
    public TWsArticleMain(String title, String content, String videoUrl, Integer articleType, String creater, Date createtime) {
        this.title = title;
        this.content = content;
        this.videoUrl = videoUrl;
        this.articleType = articleType;
        this.creater = creater;
        this.createtime = createtime;
    }

   
    // Property accessors
    @Id @GeneratedValue
    
    @Column(name="id", unique=true, nullable=false)

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @Column(name="title", length=50)

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    @Column(name="content", length=65535)

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    @Column(name="video_url", length=200)

    public String getVideoUrl() {
        return this.videoUrl;
    }
    
    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }
    
    @Column(name="article_type")

    public Integer getArticleType() {
        return this.articleType;
    }
    
    public void setArticleType(Integer articleType) {
        this.articleType = articleType;
    }
    
    @Column(name="creater", length=20)

    public String getCreater() {
        return this.creater;
    }
    
    public void setCreater(String creater) {
        this.creater = creater;
    }
    
    @Column(name="createtime", length=19)

    public Date getCreatetime() {
        return this.createtime;
    }
    
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
   








}