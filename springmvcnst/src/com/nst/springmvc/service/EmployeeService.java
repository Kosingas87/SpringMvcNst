package com.nst.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nst.springmvc.dao.EmployeesDAO;
import com.nst.springmvc.domen.Employee;



public interface EmployeeService{
	
	public List<Employee> findAll();
	public void delete(Long empId);
	public Employee save(Employee employee);
	public Employee findByID(Long empId) ;
}
