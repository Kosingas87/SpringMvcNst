package com.nst.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nst.springmvc.dao.DepartmentDAO;
import com.nst.springmvc.domen.Department;
import com.nst.springmvc.service.DepartmentService;
@Service("departmentsService")
public class DepartmentServiceImpl implements DepartmentService{
	@Autowired
		DepartmentDAO departmentDAO;
	
	@Override
	public List<Department> findAll() {
		return departmentDAO.findAll();
	}

	@Override
	public void delete(Long deptId) {
		departmentDAO.delete(deptId);
		
	}

	@Override
	public Department save(Department department) {
		return departmentDAO.save(department);
	}

	@Override
	public Department findByID(Long deptId) {
		return departmentDAO.findOne(deptId);
	}

}
