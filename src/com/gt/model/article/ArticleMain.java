package com.gt.model.article;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_article_main")
@org.hibernate.annotations.Table(appliesTo = "t_ws_article_main", comment = "官网文章主表")
public class ArticleMain {
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
	private Integer id;
	
	@Column(name = "title", columnDefinition = "varchar(50) DEFAULT NULL COMMENT '文章标题'")
	private String title;
	
	@Column(name = "content", columnDefinition = "text COMMENT '文章内容'")
	private String content;
	
	@Column(name = "video_url", columnDefinition = "varchar(200) DEFAULT NULL COMMENT '视频URL'")
	private String videoUrl;
	
	@Column(name = "article_type", columnDefinition = "int(3) DEFAULT NULL COMMENT '类型（0：企业动态，1：产品更新，2：公司新闻，3：沙龙学院）'")
	private Integer articleType;
	
	@Column(name = "creater", columnDefinition = "varchar(20) DEFAULT NULL COMMENT '创建人'")
	private String creater;
	
	@Column(name = "createtime", columnDefinition = "datetime DEFAULT NULL COMMENT '创建时间'")
	private Date createtime = new Date();
	
	@Column(name = "art_page_title", columnDefinition = "varchar(200) DEFAULT NULL COMMENT '页面title'")
	private String artPageTitle;
	
	@Column(name = "art_meta", columnDefinition = "varchar(200) DEFAULT NULL COMMENT 'meta内容'")
	private String artMeta;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getVideoUrl() {
		return videoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}

	public Integer getArticleType() {
		return articleType;
	}

	public void setArticleType(Integer articleType) {
		this.articleType = articleType;
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
	
	public String getArtPageTitle() {
		return artPageTitle;
	}

	public void setArtPageTitle(String artPageTitle) {
		this.artPageTitle = artPageTitle;
	}

	public String getArtMeta() {
		return artMeta;
	}

	public void setArtMeta(String artMeta) {
		this.artMeta = artMeta;
	}

	@Override
	public String toString() {
		return "ArticleMain [id=" + id + ", title=" + title + ", content=" + content + ", videoUrl=" + videoUrl
				+ ", articleType=" + articleType + ", creater=" + creater + ", createtime=" + createtime
				+ ", artPageTitle=" + artPageTitle + ", artMeta=" + artMeta + "]";
	}

	public static void main(String[] args) {
//		File a = new File("D:\\java\\workspace\\webSite20160616\\WebContent\\html");
//		FF(a, ".html", ".jsp");
		try {
			BufferedReader input = new BufferedReader(new FileReader("C:\\Users\\Administrator\\Desktop\\img (11).jpg"));
			StringBuffer buffer = new StringBuffer();
			String text;
			while((text = input.readLine()) != null){
				buffer.append(text +"\n");
			}
			input.close();
			BufferedWriter output = new BufferedWriter(new FileWriter("//huamao-server/Server/tomcat-8080/webapps/websiteUpload/images/sss.jpg"));
			output.write(buffer.toString());
			output.flush();
			output.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("unused")
	static void FF(File f, String oldStr, String newStr){
		String s = "<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>\n";
		if(f.isDirectory()){
			File[] l = f.listFiles();
			for (int i = 0; i < l.length; i++) {
				if (l[i].isFile()) {
//					l[i].renameTo(new File(l[i].getAbsolutePath().replace(oldStr, newStr)));
//					if(l[i].getName().indexOf(".html") != -1 || l[i].getName().indexOf(".jsp") != -1) editFile(l[i], s);
//					if(l[i].getName().indexOf(".html") != -1 || l[i].getName().indexOf(".jsp") != -1) editFileContent(l[i]);
					if(l[i].getName().indexOf(".html") != -1 || l[i].getName().indexOf(".jsp") != -1) editFileFooter(l[i]);
				}else if (l[i].isDirectory()) {
					FF(l[i], oldStr, newStr);
				}
			}
		}else{
			f.renameTo(new File(f.getAbsolutePath().replace(oldStr, newStr)));
//			if(f.getName().indexOf(".html") != -1 || f.getName().indexOf(".jsp") != -1) editFile(f, s);
//			if(f.getName().indexOf(".html") != -1 || f.getName().indexOf(".jsp") != -1) editFileContent(f);
			if(f.getName().indexOf(".html") != -1 || f.getName().indexOf(".jsp") != -1) editFileFooter(f);
		}
	}
	
	static void editFile(File file, String str){
		try {
			BufferedReader input = new BufferedReader(new FileReader(file));
			StringBuffer buffer = new StringBuffer();
			String text;
			while((text = input.readLine()) != null){
				buffer.append(text +"\n");
			}
			input.close();
			BufferedWriter output = new BufferedWriter(new FileWriter(file));
			output.write(str + buffer);
			output.flush();
			output.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	static void editFileContent(File file){
		try {
			BufferedReader input = new BufferedReader(new FileReader(file));
			StringBuffer buffer = new StringBuffer();
			String text;
			while((text = input.readLine()) != null){
				buffer.append(text +"\n");
			}
			input.close();
			BufferedWriter output = new BufferedWriter(new FileWriter(file));
			output.write(buffer.toString().replace(".html", ".jsp"));
			output.flush();
			output.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	static void editFileFooter(File file){
		try {
			BufferedReader input = new BufferedReader(new FileReader(file));
			StringBuffer buffer = new StringBuffer();
			String text;
			while((text = input.readLine()) != null){
				buffer.append(text +"\n");
			}
			int beginIndex = buffer.toString().indexOf("<div class=\"footer\">");
			int endIndex = buffer.toString().indexOf("粤B2-20150533<br/>广东谷通科技有限公司") + 40;
			String s = buffer.toString().substring(beginIndex, endIndex);
			System.out.println(s);
			input.close();
			System.exit(0);
//			BufferedWriter output = new BufferedWriter(new FileWriter(file));
//			output.write(buffer.toString().replace(".html", ".jsp"));
//			output.flush();
//			output.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
