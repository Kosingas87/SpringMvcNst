package com.nst.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nst.springmvc.domen.Employee;
import com.nst.springmvc.domen.NonSale;
import com.nst.springmvc.domen.Salary;
import com.nst.springmvc.domen.Sale;

import com.nst.springmvc.service.EmployeeService;
import com.nst.springmvc.service.SalaryService;

@Controller
public class SalaryController {
	@Autowired
	EmployeeService employeeService;
	@Autowired
	SalaryService salaryService;
	@RequestMapping("/salaries")
	public String showSalaries(Model model) {

		List<Salary> salaries = salaryService.findAll();
		model.addAttribute("salaries", salaries);
		return "salaries";
	}
	@RequestMapping(value = "/deletesalaries")
	public String delete(Model model, Long salariesId) {
		salaryService.delete(salariesId);
		List<Salary> salaries = salaryService.findAll();
		model.addAttribute("salaries", salaries);
		return "salaries";
	}
	@RequestMapping("/addsalaries")
	public String createSalary(Model model) {
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		return "addsalaries";
	}
	@RequestMapping(value = "/docreatesalarysale", method = RequestMethod.POST)
	public String doCreateSalary(Model model, Sale sale, BindingResult result, Long empId) {
		Employee employee=employeeService.findByID(empId);
		
		sale.setEmployee(employee);
		System.out.println(sale);
		salaryService.save(sale);
		System.out.println(sale);
		System.out.println("Sale salary added successfully");
		
		
		return "addsalaries";

	}
	@RequestMapping(value = "/docreatesalarynonsale", method = RequestMethod.POST)
	public String doCreateSalary(Model model, NonSale nonSale, BindingResult result, Long empId) {
		Employee employee=employeeService.findByID(empId);
		
		nonSale.setEmployee(employee);
		System.out.println(nonSale);
		salaryService.save(nonSale);
		System.out.println(nonSale);
		System.out.println("Non sale salary added successfully");
		
		
		return "addsalaries";

	}
	@RequestMapping(value = "/updatesalaries")
	public String update(Model model, Long salariesId, Long empId) {
		Salary salary = salaryService.findByID(salariesId);
		List<Salary> salaries = new ArrayList<>();
		salaries.add(salary);
		List<Employee> employees = employeeService.findAll();
		model.addAttribute("employees", employees);
		model.addAttribute("salary", salary);
		return "updatesalaries";
	}
	@RequestMapping(value = "/doupdatesalaries")
	public String doUpdate(Model model, NonSale nonSale, BindingResult result, Long empId) {
		if (result.hasErrors()){
			System.out.println("Form is not valid");
		List<ObjectError> errors = result.getAllErrors();
			for (ObjectError e: errors){
				System.out.println(e.getDefaultMessage());
		
			}
		}
       Employee employee=employeeService.findByID(empId);
       
       System.out.println(employee);
      nonSale.setEmployee(employee);
		
		
	
		salaryService.save(nonSale);
		List<Salary> salaries = salaryService.findAll();
		model.addAttribute("salaries", salaries);
		return "salaries";

	}
	
}
