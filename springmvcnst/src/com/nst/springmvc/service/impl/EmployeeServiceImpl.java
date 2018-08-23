package com.nst.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nst.springmvc.dao.EmployeesDAO;
import com.nst.springmvc.domen.Employee;
import com.nst.springmvc.service.EmployeeService;

@Service("employeesService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeesDAO employeeDAO;
	
	public List<Employee> findAll() {
		
		return employeeDAO.findAll();
	}


	public void delete(Long empId) {
		employeeDAO.delete(empId);
		
	}

	
	public Employee save(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDAO.save(employee);
	}

	
	public Employee findByID(Long empId) {
		// TODO Auto-generated method stub
		return employeeDAO.findOne(empId);
	}
}
