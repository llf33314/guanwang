package com.gt.service.employee;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.gt.model.BasisCity;
import com.gt.model.TManEmployeeAssess;
import com.gt.model.employee.Employee;

public interface IEmployeeService {
	public List employeeQuery(String select,String cx);
    public Map queryMap(Integer id);
    /**
     * 获取员工场景案例
     * @param id
     * @return
     */
    public List emploservice(Integer id);
    
    /**
     * 员工信息添加
     * @param request
     */
    public void employeeadd(TManEmployeeAssess obj);
    /**
     * 根据父类id查询出城市信息
     * @param cityid
     * @return
     */
    public List<BasisCity> citylist(Integer cityid);
    
    public Map sumbit(HttpServletRequest request);
    /**
     * 查询所有员工
     * @return
     */
	public List findAll();
	/**
	 * 通过员工id查询评价信息
	 * @param id
	 * @return
	 */
	public List<TManEmployeeAssess> findAssessByEmployee(Integer id);
	/**
	 * 通过评价id查询评价
	 * @param aId
	 * @return
	 */
	public TManEmployeeAssess findAccessById(Integer aId);
	
	public Employee findById(Integer id);
	
	public List<Employee> findAllEmp();
	
	public Serializable create(Employee employee);
	
	public void update(Employee employee);
	/**
	 * 添加创建者名称
	 * @param list
	 * @return
	 */
	public List<Map<String, Object>> addCreater(List<Map<String, Object>> list);
	/**
	 * 打印员工
	 * @return
	 */
	public HSSFWorkbook print();
	
	public void delete(Employee employee);
	/**
	 * 导入员工信息
	 * @param in
	 * @return
	 * @throws IOException 
	 */
	public List<Employee> importEmpExcel(InputStream in) throws IOException;
	
	public void creates(List<Employee> empList);
}
