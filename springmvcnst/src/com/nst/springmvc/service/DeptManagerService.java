package com.nst.springmvc.service;

import java.util.List;

import com.nst.springmvc.dao.DeptManagerDAO;
import com.nst.springmvc.domen.DeptManager;


public interface DeptManagerService {
	public List<DeptManager> findAll();
	public void delete(Long deptManagerId);
	public DeptManager save(DeptManager deptManager);
	public DeptManager findByID(Long deptManagerId) ;

}
