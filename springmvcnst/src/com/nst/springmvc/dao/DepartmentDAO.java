package com.nst.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nst.springmvc.domen.Department;

@Repository("departmentsDAO")
public interface DepartmentDAO extends JpaRepository<Department, Long>{

}
