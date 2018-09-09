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

import com.nst.springmvc.domen.DepEmp;
import com.nst.springmvc.domen.Department;
import com.nst.springmvc.domen.DeptManager;
import com.nst.springmvc.domen.Employee;
import com.nst.springmvc.service.DepartmentService;
import com.nst.springmvc.service.DeptManagerService;
import com.nst.springmvc.service.EmployeeService;

@Controller
public class DeptManagerController {
	@Autowired
	DeptManagerService deptManagerService;
	@Autowired
	DepartmentService departmentService;
	@Autowired
	EmployeeService employeeService;
	@RequestMapping("/deptmanagers")
	public String showDeptManager(Model model) {

		List<DeptManager> deptmanagers =deptManagerService.findAll();
		model.addAttribute("deptmanagers",deptmanagers);
		return "deptmanagers";
	}
	@RequestMapping("/adddeptmanager")
	public String createDepEmp(Model model) {
		List<Employee> employees = employeeService.findAll();
		List<Department> departments=departmentService.findAll();
		model.addAttribute("employees", employees);
		model.addAttribute("departments", departments);
		return "adddeptmanager";
	}
	@RequestMapping(value = "/docreatedeptmanager", method = RequestMethod.POST)
	public String doCreateTitle(Model model, @Valid DeptManager deptManager, BindingResult result, Long empId,Long deptId) {
		Employee employee=employeeService.findByID(empId);
		Department department=departmentService.findByID(deptId);
		List<Employee> employees = employeeService.findAll();
		List<Department> departments=departmentService.findAll();
		deptManager.setEmployee(employee);
		deptManager.setDepartment(department);
		System.out.println(deptManager);
		deptManagerService.save(deptManager);
		System.out.println(deptManager);
		System.out.println("Manager set for the department successfully");
		model.addAttribute("employees", employees);
		model.addAttribute("departments", departments);
		model.addAttribute("message","Manager added to department succesfully!!!");
		
		
		return "adddeptmanager";

	}
	@RequestMapping(value = "/deletedeptmanager")
	public String delete(Model model, Long deptManagerId) {
		deptManagerService.delete(deptManagerId);
		List<DeptManager> deptmanagers = deptManagerService.findAll();
		model.addAttribute("deptmanagers", deptmanagers);
		return "deptmanagers";
	}
	@RequestMapping(value = "/updatedeptmanager")
	public String update(Model model, Long deptManagerId,Long empId,Long deptId) {
		DeptManager deptManager = deptManagerService.findByID(deptManagerId);
		List<DeptManager> deptmanagers = new ArrayList<>();
		deptmanagers.add(deptManager);
		List<Employee> employees = employeeService.findAll();
		List<Department> departments=departmentService.findAll();
		model.addAttribute("employees", employees);
		model.addAttribute("deptmanagers", deptmanagers);
		model.addAttribute("departments", departments);
		return "updatedeptmanager";
	}

	@RequestMapping(value = "/doupdatedeptmanager")
	public String doUpdate(Model model, @Valid DeptManager deptManager, BindingResult result, Long empId,Long deptId) {
        Employee employee=employeeService.findByID(empId);
        Department department=departmentService.findByID(deptId);
		
        deptManager.setEmployee(employee);
        deptManager.setDepartment(department);
	
        deptManagerService.save(deptManager);
		List<DeptManager> deptmanagers = deptManagerService.findAll();
		model.addAttribute("deptmanagers",deptmanagers);
		return "deptmanagers";

	}
}
