package com.nst.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nst.springmvc.dao.TitlesDAO;
import com.nst.springmvc.domen.Title;
import com.nst.springmvc.service.TitleService;
@Service("titlesService")
public class TitleServiceImpl implements TitleService {
	
	@Autowired
	TitlesDAO titleDAO;
	
	@Override
	public List<Title> findAll() {

		return titleDAO.findAll();
	}

	@Override
	public void delete(Long titlesId) {
		titleDAO.delete(titlesId);
		
		
	}

	@Override
	public Title save(Title title) {
		
		return titleDAO.save(title);
	}

	@Override
	public Title findByID(Long titlesId) {
		
		return titleDAO.findOne(titlesId);
	}

}
