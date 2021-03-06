package com.nst.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nst.springmvc.domen.Employee;
import com.nst.springmvc.service.EmployeeService;

@Controller
public class EmployeesController {
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/employees")
	public String showEmployees(Model model) {

		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		return "employees";
	}

	@RequestMapping("/addemployees")
	public String createEmployee(Model model) {

		return "addemployees";
	}

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String doCreate(Model model, @Valid Employee employee, BindingResult result,RedirectAttributes attributes) {

		employeeService.save(employee);
		System.out.println(employee);
		System.out.println("Employee added successfully");
		
		
		model.addAttribute("message","Employee added succesfully!!!");
		
		return "addemployees";

	}

	@RequestMapping(value = "/deleteemployee")
	public String delete(Model model, Long empId) {
		employeeService.delete(empId);
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		return "employees";
	}

	@RequestMapping(value = "/updateemployee")
	public String update(Model model, Long empId) {
		Employee employee = employeeService.findByID(empId);
		List<Employee> employees = new ArrayList<>();
		employees.add(employee);
		model.addAttribute("employees", employees);
		return "updateemployee";
	}

	@RequestMapping(value = "/doupdate")
	public String doUpdate(Model model, @Valid Employee employee, BindingResult result) {

		employeeService.save(employee);
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		model.addAttribute("message","Employee updated succesfully!!!");
		return "employees";

	}

}
