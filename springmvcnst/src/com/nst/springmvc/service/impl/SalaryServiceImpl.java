package com.nst.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nst.springmvc.dao.SalaryDAO;
import com.nst.springmvc.domen.Salary;
import com.nst.springmvc.service.SalaryService;

@Service("salariesService")
public class SalaryServiceImpl implements SalaryService {
	@Autowired
	SalaryDAO salaryDAO;

	@Override
	public List<Salary> findAll() {
		return salaryDAO.findAll();
	}

	@Override
	public void delete(Long salariesId) {
		salaryDAO.delete(salariesId);

	}

	@Override
	public Salary save(Salary salary) {
		
		return salaryDAO.save(salary);
	}

	@Override
	public Salary findByID(Long salariesId) {
		
		return salaryDAO.findOne(salariesId);
	}

}
