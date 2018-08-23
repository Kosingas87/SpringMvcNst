package com.nst.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nst.springmvc.domen.Employee;
@Repository("employeesDAO")
public interface EmployeesDAO extends JpaRepository<Employee, Long> {

}
