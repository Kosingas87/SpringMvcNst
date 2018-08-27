package com.nst.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nst.springmvc.domen.DepEmp;

@Repository("depEmpDAO")
public interface DepEmpDAO extends JpaRepository<DepEmp, Long> {

}
