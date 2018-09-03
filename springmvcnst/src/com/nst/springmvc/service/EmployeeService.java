package com.nst.springmvc.service;

import java.util.List;


import com.nst.springmvc.domen.Employee;



public interface EmployeeService{
	
	public List<Employee> findAll();
	public void delete(Long empId);
	public Employee save(Employee employee);
	public Employee findByID(Long empId) ;
}


