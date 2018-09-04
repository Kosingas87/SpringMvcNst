package com.nst.springmvc.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nst.springmvc.domen.Employee;
import com.nst.springmvc.domen.Title;
import com.nst.springmvc.service.EmployeeService;
import com.nst.springmvc.service.TitleService;


@Controller
public class TitlesController {
	@Autowired
	TitleService titleService;
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/titles")
	public String showtitles(Model model) {

		List<Title> titles = titleService.findAll();
		model.addAttribute("titles", titles);
		return "titles";
	}

	@RequestMapping("/addtitles")
	public String createTitle(Model model) {
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		return "addtitles";
	}

	@RequestMapping(value = "/docreatetitle", method = RequestMethod.POST)
	public String doCreateTitle(Model model, Title title, BindingResult result, Long empId) {
		Employee employee=employeeService.findByID(empId);
		
		title.setEmployee(employee);
		System.out.println(title);
		titleService.save(title);
		System.out.println(title);
		System.out.println("Title added successfully");
		model.addAttribute("message","Title added succesfully!!!");
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		return "addtitles";

	}
	

	@RequestMapping(value = "/deletetitle")
	public String delete(Model model, Long titlesId) {
		titleService.delete(titlesId);
		List<Title> titles = titleService.findAll();
		model.addAttribute("titles", titles);
		return "titles";
	}

	@RequestMapping(value = "/updatetitle")
	public String update(Model model, Long titlesId,Long empId) {
		Title title = titleService.findByID(titlesId);
		List<Title> titles = new ArrayList<>();
		titles.add(title);
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		model.addAttribute("titles", titles);
		return "updatetitle";
	}

	@RequestMapping(value = "/doupdatetitle")
	public String doUpdate(Model model, Title title, BindingResult result, Long empId) {
        Employee employee=employeeService.findByID(empId);
		
		title.setEmployee(employee);
	
		titleService.save(title);
		List<Title> titles = titleService.findAll();
		model.addAttribute("titles", titles);
		model.addAttribute("message","Title updated succesfully!!!");
		return "titles";

	}
	
}
