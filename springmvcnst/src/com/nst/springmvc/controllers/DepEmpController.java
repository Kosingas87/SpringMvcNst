package com.nst.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nst.springmvc.domen.DepEmp;
import com.nst.springmvc.domen.Department;
import com.nst.springmvc.domen.Employee;
import com.nst.springmvc.domen.Title;
import com.nst.springmvc.service.DepEmpService;
import com.nst.springmvc.service.DepartmentService;
import com.nst.springmvc.service.EmployeeService;

@Controller
public class DepEmpController {
		@Autowired
		DepEmpService depEmpService;
		@Autowired
		EmployeeService employeeService;
		@Autowired
		DepartmentService departmentService;
		
		@RequestMapping("/depemp")
		public String showDepEmp(Model model) {

			List<DepEmp> depEmps =depEmpService.findAll();
			model.addAttribute("depEmps", depEmps);
			return "depemp";
		}
		@RequestMapping("/adddepemp")
		public String createDepEmp(Model model) {
			List<Employee> employees = employeeService.findAll();
			List<Department> departments=departmentService.findAll();
			model.addAttribute("employees", employees);
			model.addAttribute("departments", departments);
			return "adddepemp";
		}
		@RequestMapping(value = "/docreatedepemp", method = RequestMethod.POST)
		public String doCreateTitle(Model model, DepEmp depEmp, BindingResult result, Long empId,Long deptId) {
			Employee employee=employeeService.findByID(empId);
			Department department=departmentService.findByID(deptId);
			depEmp.setEmployee(employee);
			depEmp.setDepartment(department);
			System.out.println(depEmp);
			depEmpService.save(depEmp);
			System.out.println(depEmp);
			System.out.println("Employee added to departments successfully");
			
			
			return "adddepemp";

		}
		@RequestMapping(value = "/deletedepemp")
		public String delete(Model model, Long deptEmpId) {
			depEmpService.delete(deptEmpId);
			List<DepEmp> depEmps = depEmpService.findAll();
			model.addAttribute("depEmps", depEmps);
			return "depemp";
		}
		@RequestMapping(value = "/updatedepemp")
		public String update(Model model, Long deptEmpId,Long empId,Long deptId) {
			DepEmp depEmp = depEmpService.findByID(deptEmpId);
			List<DepEmp> depEmps = new ArrayList<>();
			depEmps.add(depEmp);
			List<Employee> employees = employeeService.findAll();
			List<Department> departments=departmentService.findAll();
			model.addAttribute("employees", employees);
			model.addAttribute("depEmps", depEmps);
			model.addAttribute("departments", departments);
			return "updatedepemp";
		}

		@RequestMapping(value = "/doupdatedepemp")
		public String doUpdate(Model model, DepEmp depEmp, BindingResult result, Long empId,Long deptId) {
	        Employee employee=employeeService.findByID(empId);
	        Department department=departmentService.findByID(deptId);
			
	        depEmp.setEmployee(employee);
	        depEmp.setDepartment(department);
		
			depEmpService.save(depEmp);
			List<DepEmp> depEmps = depEmpService.findAll();
			model.addAttribute("depEmps", depEmps);
			return "depemp";

		}
		
}
