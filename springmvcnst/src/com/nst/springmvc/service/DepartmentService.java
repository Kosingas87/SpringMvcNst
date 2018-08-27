package com.nst.springmvc.service;

import java.util.List;

import com.nst.springmvc.domen.Department;


public interface DepartmentService {
	public List<Department> findAll();
	public void delete(Long deptId);
	public Department save(Department department);
	public Department findByID(Long deptId) ;
}
