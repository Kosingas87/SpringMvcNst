package com.nst.springmvc.service;

import java.util.List;


import com.nst.springmvc.domen.Salary;

public interface SalaryService {
	public List<Salary> findAll();
	public void delete(Long salariesId);
	public Salary save(Salary salary);
	public Salary findByID(Long salariesId) ;
}
