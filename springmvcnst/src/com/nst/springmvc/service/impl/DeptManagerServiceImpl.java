package com.nst.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.nst.springmvc.dao.DeptManagerDAO;
import com.nst.springmvc.domen.DeptManager;
import com.nst.springmvc.service.DeptManagerService;

@Service("deptManagerService")
public class DeptManagerServiceImpl implements DeptManagerService {
	@Autowired
	DeptManagerDAO deptManagerDAO;

	@Override
	public List<DeptManager> findAll() {
		
		return deptManagerDAO.findAll();
	}

	@Override
	public void delete(Long deptManagerId) {
		 deptManagerDAO.delete(deptManagerId);
		
	}

	

	@Override
	public DeptManager findByID(Long deptManagerId) {
		
		return deptManagerDAO.findOne(deptManagerId);
	}

	@Override
	public DeptManager save(DeptManager deptManager) {
		return deptManagerDAO.save(deptManager);
	}
	
}
