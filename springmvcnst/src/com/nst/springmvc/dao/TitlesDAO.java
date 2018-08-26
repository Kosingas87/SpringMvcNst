package com.nst.springmvc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nst.springmvc.domen.Title;

@Repository("titlesDAO")
public interface TitlesDAO extends JpaRepository<Title, Long> {

}
