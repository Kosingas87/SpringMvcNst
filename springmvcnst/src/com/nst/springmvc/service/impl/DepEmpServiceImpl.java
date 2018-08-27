package com.nst.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nst.springmvc.dao.DepEmpDAO;
import com.nst.springmvc.domen.DepEmp;
import com.nst.springmvc.service.DepEmpService;
@Service("depEmpService")
public class DepEmpServiceImpl implements DepEmpService {
	@Autowired
	DepEmpDAO depEmpDAO;
	@Override
	public List<DepEmp> findAll() {
		return depEmpDAO.findAll();
	}

	@Override
	public void delete(Long deptEmpId) {
		depEmpDAO.delete(deptEmpId);
		
	}

	@Override
	public DepEmp save(DepEmp depEmp) {
		
		return depEmpDAO.save(depEmp);
	}

	@Override
	public DepEmp findByID(Long deptEmpId) {
		
		return depEmpDAO.findOne(deptEmpId);
	}

}
