package com.nst.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nst.springmvc.domen.DeptManager;

@Repository("deptManagerDAO")
public interface DeptManagerDAO extends JpaRepository<DeptManager, Long>{

}
