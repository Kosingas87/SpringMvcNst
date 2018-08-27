package com.nst.springmvc.service;

import java.util.List;

import com.nst.springmvc.domen.DepEmp;



public interface DepEmpService {
	public List<DepEmp> findAll();
	public void delete(Long deptEmpId);
	public DepEmp save(DepEmp depEmp);
	public DepEmp findByID(Long deptEmpId) ;
}
