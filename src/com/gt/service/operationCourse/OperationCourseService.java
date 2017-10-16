package com.gt.service.operationCourse;

import com.gt.model.operationCourse.OperationCourse;
import com.gt.model.operationCourse.OperationCourseTeacher;
import com.gt.model.productCenter.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface OperationCourseService {

	@SuppressWarnings("rawtypes")
	List selectList(Map param);

	@SuppressWarnings("rawtypes")
	int selectListCount(Map param);

	@SuppressWarnings("rawtypes")
	int selectTypeListCount(Map param);

	@SuppressWarnings("rawtypes")
	List selectTypeList(Map param);

	int insertType(OperationCourseTeacher a);

	int deleteType(Integer id);

	int updateType(OperationCourseTeacher a);


	int delete(Integer valueOf, HttpServletRequest request) throws Exception;


	void allReset(HttpServletRequest request) throws Exception;


	int insert(OperationCourse a, HttpServletRequest request) throws Exception;

	int update(OperationCourse a,  HttpServletRequest request) throws Exception;


    int selectListCount1(Map param);

    List selectList1(Map param);
}