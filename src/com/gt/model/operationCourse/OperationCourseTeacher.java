package com.gt.model.operationCourse;

import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_ws_operation_course_teacher")
@org.hibernate.annotations.Table(appliesTo = "t_ws_operation_course_teacher", comment = "运营课程讲师")
public class OperationCourseTeacher {
	
	@Id
	@GeneratedValue
	@Column(name = "id", columnDefinition = "int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID'")
    private Integer id;

    @Column(name = "teachername", columnDefinition = "varchar(20) DEFAULT '' COMMENT '讲师名称'")
    private String teachername;

    @Column(name = "createtime", columnDefinition = "varchar(20) DEFAULT '' COMMENT '创建时间'")
	private String createtime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
    
    @Column(name = "teacherdesc", columnDefinition = "varchar(200) DEFAULT '' COMMENT '描述'")
    private String teacherdesc;
    
    @Column(name = "teacherimg", columnDefinition = "varchar(255) DEFAULT '' COMMENT '头像'")
    private String teacherimg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTeachername() {
        return teachername;
    }

    public void setTeachername(String teachername) {
        this.teachername = teachername;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
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
}