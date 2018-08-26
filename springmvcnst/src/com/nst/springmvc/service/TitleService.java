package com.nst.springmvc.service;

import java.util.List;


import com.nst.springmvc.domen.Title;

public interface TitleService {
	public List<Title> findAll();
	public void delete(Long titlesId);
	public Title save(Title title);
	public Title findByID(Long titlesId) ;
}
