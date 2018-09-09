package com.nst.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nst.springmvc.domen.Department;


import com.nst.springmvc.service.DepartmentService;
import com.nst.springmvc.service.EmployeeService;


@Controller
public class DepartmentController {
	@Autowired
	DepartmentService departmentService;
	
	@RequestMapping("/departments")
	public String showDepartments(Model model) {

		List<Department>departments = departmentService.findAll();
		model.addAttribute("departments", departments);
		return "departments";
	}

	@RequestMapping("/adddepartment")
	public String createdepartment(Model model) {
		
		return "adddepartment";
	}

	@RequestMapping(value = "/docreatedepartment", method = RequestMethod.POST)
	public String doCreatedepartment(Model model, @Valid Department department,  BindingResult result) {
	
		departmentService.save(department);
		System.out.println(department);
		System.out.println("department added successfully");
		model.addAttribute("message","Department added succesfully!!!");
		
		return "adddepartment";

	}
	

	@RequestMapping(value = "/deletedepartment")
	public String delete(Model model, Long deptId) {
		departmentService.delete(deptId);
		List<Department> departments = departmentService.findAll();
		model.addAttribute("departments", departments);
		return "departments";
	}

	@RequestMapping(value = "/updatedepartment")
	public String update(Model model, Long deptId) {
		Department department = departmentService.findByID(deptId);
		List<Department> departments = new ArrayList<>();
		departments.add(department);
		model.addAttribute("departments", departments);
		return "updatedepartment";
	}

	@RequestMapping(value = "/doupdatedepartment")
	public String doUpdate(Model model,@Valid Department department, BindingResult result) {
        
	
		departmentService.save(department);
		List<Department> departments = departmentService.findAll();
		model.addAttribute("departments", departments);
		model.addAttribute("message","Department updated succesfully!!!");
		return "departments";

	}
	
	
	
}
