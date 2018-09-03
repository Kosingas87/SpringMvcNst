package com.nst.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.nst.springmvc.domen.Salary;

@Repository("salaryDAO")
public interface SalaryDAO extends JpaRepository<Salary, Long> {

}
